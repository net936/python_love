import { get, post } from '/@/utils/http/axios';

const URL = {
  create: '/myapp/index/order/create',
  cancelUserOrder: '/myapp/index/order/cancel_order',
  yesUserOrderApi: '/myapp/index/order/yes_order',
  userOrderList: '/myapp/index/order/list',
};

const createApi = async (data) => post({ url: URL.create, data: data, headers: {} });

const userOrderListApi = async (params) => get({ url: URL.userOrderList, params: params, data: {}, headers: {} });

const yesUserOrderApi = async (params) => post({ url: URL.yesUserOrderApi, params: params, headers: {} });
const cancelUserOrderApi = async (params) => post({ url: URL.cancelUserOrder, params: params, headers: {} });

export { createApi, userOrderListApi, yesUserOrderApi, cancelUserOrderApi };
