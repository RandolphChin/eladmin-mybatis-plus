<template>
  <div class="app-container">
    <!--工具栏-->
    <div class="head-container">
      <div v-if="crud.props.searchToggle">
        <!-- 搜索 -->
                <label class="el-form-item-label">星期几</label>
                <el-input v-model="query.name" clearable placeholder="星期几" style="width: 185px;" class="filter-item" @keyup.enter.native="crud.toQuery" />
                <label class="el-form-item-label">开机cron表达式</label>
                <el-input v-model="query.cronOpen" clearable placeholder="开机cron表达式" style="width: 185px;" class="filter-item" @keyup.enter.native="crud.toQuery" />
                <label class="el-form-item-label">关机cron表达式</label>
                <el-input v-model="query.cronClose" clearable placeholder="关机cron表达式" style="width: 185px;" class="filter-item" @keyup.enter.native="crud.toQuery" />
        <rrOperation :crud="crud" />
      </div>
      <!--如果想在工具栏加入更多按钮，可以使用插槽方式， slot = 'left' or 'right'-->
      <crudOperation :permission="permission" />
      <!--表单组件-->
      <el-dialog :close-on-click-modal="false" :before-close="crud.cancelCU" :visible.sync="crud.status.cu > 0" :title="crud.status.title" width="500px">
        <el-form ref="form" :model="form" :rules="rules" size="small" label-width="80px">
          <el-form-item label="星期几">
            <el-input v-model="form.name" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="开机cron表达式">
            <el-input v-model="form.cronOpen" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="关机cron表达式">
            <el-input v-model="form.cronClose" style="width: 370px;" />
          </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button type="text" @click="crud.cancelCU">取消</el-button>
          <el-button :loading="crud.status.cu === 2" type="primary" @click="crud.submitCU">确认</el-button>
        </div>
      </el-dialog>
      <!--表格渲染-->
      <el-table ref="table" v-loading="crud.loading" :data="crud.data" size="small" style="width: 100%;" @selection-change="crud.selectionChangeHandler">
        <el-table-column type="selection" width="55" />
        <el-table-column prop="id" label="ID" />
        <el-table-column prop="name" label="星期几" />
        <el-table-column prop="cronOpen" label="开机cron表达式" />
        <el-table-column prop="cronClose" label="关机cron表达式" />
        <el-table-column prop="status" label="是否暂停" />
        <el-table-column prop="jobId" label="场馆" />
        <el-table-column prop="jobWeek" label="场馆与星期数组合" />
        <el-table-column v-if="checkPer(['admin','chargerCron:edit','chargerCron:del'])" label="操作" width="150px" align="center">
          <template slot-scope="scope">
            <udOperation
              :data="scope.row"
              :permission="permission"
            />
          </template>
        </el-table-column>
      </el-table>
      <!--分页组件-->
      <pagination />
    </div>
  </div>
</template>

<script>
import crudChargerCron from '@/api/chargerCron'
import CRUD, { presenter, header, form, crud } from '@crud/crud'
import rrOperation from '@crud/RR.operation'
import crudOperation from '@crud/CRUD.operation'
import udOperation from '@crud/UD.operation'
import pagination from '@crud/Pagination'

const defaultForm = { id: null, name: null, cronOpen: null, cronClose: null, status: null, jobId: null, jobWeek: null }
export default {
  name: 'ChargerCron',
  components: { pagination, crudOperation, rrOperation, udOperation },
  mixins: [presenter(), header(), form(defaultForm), crud()],
  cruds() {
    return CRUD({ title: 'Quartz', url: 'api/chargerCron', idField: 'id', sort: 'id,desc', crudMethod: { ...crudChargerCron }})
  },
  data() {
    return {
      permission: {
        add: ['admin', 'chargerCron:add'],
        edit: ['admin', 'chargerCron:edit'],
        del: ['admin', 'chargerCron:del']
      },
      rules: {
      },
      queryTypeOptions: [
        { key: 'name', display_name: '星期几' },
        { key: 'cronOpen', display_name: '开机cron表达式' },
        { key: 'cronClose', display_name: '关机cron表达式' }
      ]
    }
  },
  methods: {
    // 钩子：在获取表格数据之前执行，false 则代表不获取数据
    [CRUD.HOOK.beforeRefresh]() {
      return true
    }
  }
}
</script>

<style scoped>

</style>
