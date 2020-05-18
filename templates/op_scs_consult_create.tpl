<script type="text/javascript" src="<{$xoops_url}>/modules/tadtools/My97DatePicker/WdatePicker.js"></script>

<h2 class="scs">編輯「<{$stu.stu_name}>」個別輔導紀錄</h2>

<div class="alert alert-info">
    <{includeq file="$xoops_rootpath/modules/scs/templates/sub_year_grade_class_menu.tpl"}>
</div>


<!--套用formValidator驗證機制-->
<form action="<{$smarty.server.PHP_SELF}>" method="post" id="myForm" enctype="multipart/form-data" class="form-horizontal">

    <!--會談日期-->
    <div class="form-group row custom-gutter">
        <label class="col-sm-2 col-form-label text-md-right control-label">
            <{$smarty.const._MD_SCS_CONSULT_DATE}>
        </label>
        <div class="col-sm-2">
            <input type="text" name="consult_date" id="consult_date" class="form-control validate[required]" value="<{$DBV.consult_date}>"  onClick="WdatePicker({dateFmt:'yyyy-MM-dd', startDate:'%y-%M-%d'})" placeholder="<{$smarty.const._MD_SCS_CONSULT_DATE}>">
        </div>

        <!--會談開始時間-->
        <label class="col-sm-2 col-form-label text-md-right control-label">
            <{$smarty.const._MD_SCS_CONSULT_START}>
        </label>
        <div class="col-sm-2">
            <input type="text" name="consult_start" id="consult_start" class="form-control " value="<{$DBV.consult_start}>"  onClick="WdatePicker({dateFmt:'HH:mm'})" placeholder="<{$smarty.const._MD_SCS_CONSULT_START}>">
        </div>

        <!--會談結束時間-->
        <label class="col-sm-2 col-form-label text-md-right control-label">
            <{$smarty.const._MD_SCS_CONSULT_END}>
        </label>
        <div class="col-sm-2">
            <input type="text" name="consult_end" id="consult_end" class="form-control " value="<{$DBV.consult_end}>"  onClick="WdatePicker({dateFmt:'HH:mm'})" placeholder="<{$smarty.const._MD_SCS_CONSULT_END}>">
        </div>

    </div>

    <div class="form-group row custom-gutter">
        <!--來談動機-->
        <label class="col-sm-2 col-form-label text-md-right control-label">
            <{$smarty.const._MD_SCS_CONSULT_MOTIVATION}>
        </label>
        <div class="col-sm-2">
            <input list="consult_motivation" name="consult_motivation" class="form-control validate[required]" value="<{$DBV.consult_motivation}>" placeholder="可選亦可直接輸入">
            <datalist id="consult_motivation">
                <{foreach from=$consult_motivation_arr key=k item=title}>
                    <option value="<{$title}>">
                <{/foreach}>
            </datalist>
        </div>

        <!--問題類別-->
        <label class="col-sm-2 col-form-label text-md-right control-label">
            <{$smarty.const._MD_SCS_CONSULT_KIND}>
        </label>
        <div class="col-sm-2">
            <input list="consult_kind" name="consult_kind" class="form-control validate[required]" value="<{$DBV.consult_kind}>" placeholder="可選亦可直接輸入">
            <datalist id="consult_kind">
                <{foreach from=$consult_kind_arr key=k item=title}>
                    <option value="<{$title}>">
                <{/foreach}>
            </datalist>
        </div>
        <!--處理方式-->
        <label class="col-sm-2 col-form-label text-md-right control-label">
            <{$smarty.const._MD_SCS_CONSULT_METHOD}>
        </label>
        <div class="col-sm-2">
            <input list="consult_method" name="consult_method" class="form-control validate[required]" value="<{$DBV.consult_method}>" placeholder="可選亦可直接輸入">
            <datalist id="consult_method">
                <{foreach from=$consult_method_arr key=k item=title}>
                    <option value="<{$title}>">
                <{/foreach}>
            </datalist>
        </div>
    </div>

    <div class="alert alert-warning">
        <!--主要原因-->
        <div class="form-group row custom-gutter">
            <div class="col-sm-12">
                <input type="text" name="consult_reason" id="consult_reason" class="form-control " value="<{$DBV.consult_reason}>" placeholder="<{$smarty.const._MD_SCS_CONSULT_REASON}>">
            </div>
        </div>


        <!--會談紀要-->
        <div class="form-group row custom-gutter">
            <div class="col-sm-12">
                <textarea name="consult_note" rows=10 id="consult_note" class="form-control " placeholder="<{$smarty.const._MD_SCS_CONSULT_NOTE}>"><{$DBV.consult_note}></textarea>
            </div>
        </div>
    </div>

    <!--上傳-->
    <div class="form-group row custom-gutter">
        <label class="col-sm-2 col-form-label text-md-right control-label">
            相關檔案
        </label>
        <div class="col-sm-10">
            <{$up_consult_id_create}>
        </div>
    </div>

    <div class="text-center">

        <!--學生編號-->
        <input type='hidden' name="stu_id" value="<{$stu_id}>">

        <{$token_form}>

        <input type="hidden" name="op" value="<{$next_op}>">
        <input type="hidden" name="stu_grade" value="<{$stu_grade}>">
        <input type="hidden" name="stu_class" value="<{$stu_class}>">
        <input type="hidden" name="stu_seat_no" value="<{$stu_seat_no}>">
        <input type="hidden" name="consult_id" value="<{$consult_id}>">
        <button type="submit" class="btn btn-primary"><{$smarty.const._TAD_SAVE}></button>
    </div>
</form>
