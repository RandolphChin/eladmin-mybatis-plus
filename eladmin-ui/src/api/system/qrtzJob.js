import request from '@/utils/request'

export function get(data) {
  return request({
    url: 'api/jobs',
    method: 'get',
    params: data
  })
}

export function add(data) {
  return request({
    url: 'api/jobs',
    method: 'post',
    data
  })
}

export function del(data) {
  return request({
    url: 'api/jobs/deleteJob',
    method: 'delete',
    data
  })
}

export function edit(data) {
  return request({
    url: 'api/jobs',
    method: 'put',
    data
  })
}

export function pauseJob(data) {
  return request({
    url: 'api/jobs/pauseJob',
    method: 'put',
    data
  })
}

export function resumeJob(data) {
  return request({
    url: 'api/jobs/resumeJob',
    method: 'put',
    data
  })
}

export function runOnce(data) {
  return request({
    url: 'api/jobs/runOnce/',
    method: 'post',
    data
  })
}
export const linkWebsocket = `/api/my-device-app`
export const subscribeWebsocker = '/topic/quartz'
export default { add, edit, del, pauseJob, resumeJob, runOnce, get, linkWebsocket, subscribeWebsocker }
