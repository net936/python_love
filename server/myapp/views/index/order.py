# Create your views here.
import datetime

from rest_framework.decorators import api_view, authentication_classes

from myapp import utils
from myapp.auth.authentication import TokenAuthtication
from myapp.handler import APIResponse
from myapp.models import Order, Thing
from myapp.serializers import OrderSerializer


@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        myThingId = request.GET.get('myThingId', '')
        type = request.GET.get('type', '1')

        if type == '1':
            orders = Order.objects.all().filter(thing_a=myThingId).order_by('-order_time')
            serializer = OrderSerializer(orders, many=True)
            return APIResponse(code=0, msg='查询成功', data=serializer.data)
        elif type == '2':
            orders = Order.objects.all().filter(thing_b=myThingId).order_by('-order_time')
            serializer = OrderSerializer(orders, many=True)
            return APIResponse(code=0, msg='查询成功', data=serializer.data)


@api_view(['POST'])
@authentication_classes([TokenAuthtication])
def create(request):
    data = request.data.copy()
    if data['thing_a'] is None or data['thing_b'] is None or data['receiver_name'] is None:
        return APIResponse(code=1, msg='参数错误')

    create_time = datetime.datetime.now()
    data['create_time'] = create_time
    data['order_number'] = str(utils.get_timestamp())
    data['status'] = '1'
    serializer = OrderSerializer(data=data)
    if serializer.is_valid():
        serializer.save()

        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)
        return APIResponse(code=1, msg='创建失败')

@api_view(['POST'])
@authentication_classes([TokenAuthtication])
def yes_order(request):
    """
    cancal
    """
    try:
        pk = request.GET.get('id', -1)
        order = Order.objects.get(pk=pk)
    except Order.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    data = {
        'status': 2
    }
    serializer = OrderSerializer(order, data=data)
    if serializer.is_valid():
        serializer.save()

        return APIResponse(code=0, msg='成功', data=serializer.data)
    else:
        print(serializer.errors)
        return APIResponse(code=1, msg='更新失败')

@api_view(['POST'])
@authentication_classes([TokenAuthtication])
def cancel_order(request):
    """
    cancal
    """
    try:
        pk = request.GET.get('id', -1)
        order = Order.objects.get(pk=pk)
    except Order.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    data = {
        'status': 3
    }
    serializer = OrderSerializer(order, data=data)
    if serializer.is_valid():
        serializer.save()

        return APIResponse(code=0, msg='成功', data=serializer.data)
    else:
        print(serializer.errors)
        return APIResponse(code=1, msg='更新失败')
