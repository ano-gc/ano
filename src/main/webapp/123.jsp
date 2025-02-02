<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <meta charset="UTF-8">
    <title>login</title>

      <script src="jquery/jquery-3.4.1.min.js"></script>
      <link href="bootstrap/bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet">
      <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
      <script src="bootstrap/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="css/style.css">


  </head>
  
  <body>
  <main id="main" class="in">
      <div class="container">
          <style>body {padding-bottom: 20px;}
          .nav > li > .btn {padding: 0 5px; line-height: 24px; margin: 3px; color: #3C4353;}
          .nav > li > .btn.btn-primary {color: #fff;}
          .nav .icon-more {font-size: 14px;}
          .block-statistic .nav-stacked {overflow: auto; max-height: 220px;}
          #dashboard .col-side {width: 450px; max-width: 450px;}
          #dashboard .panel-body {max-height: 400px; overflow: auto;}
          #dashboard .panel-body.has-table {padding-top: 0;}
          #dashboard .panel-move-handler {position: absolute; top: 0; left: 0; right: 50px; height: 40px; z-index: 10; cursor: move;}
          #dashboard .panel-heading {cursor: move; padding-right: 75px;}
          @media (min-width: 992px)
          {
              #dashboard > .row {display: table; width: 100%; margin: 0;}
              #dashboard > .row > .col-main,
              #dashboard > .row > .col-side {display: table-cell; float: none; padding: 0; vertical-align: top;}
              #dashboard > .row > .col-main {padding-right: 10px }
              #dashboard > .row > .col-side {padding-left: 10px }
          }
          #dashboard.sortable-sorting .panel {margin-bottom: 10px; box-shadow: 0 1px 1px rgba(0,0,0,.075), 0 2px 6px 0 rgba(0,0,0,.075); height: 46px;}
          #dashboard.sortable-sorting .panel > * {display: none;}
          #dashboard.sortable-sorting .panel:before {display: block; content: attr(data-name); padding: 12px 20px; font-weight: bold; font-size: 14px; color: #3c4353; opacity: 1!important; text-align: left; visibility: visible;}
          #dashboard.sortable-sorting .panel.dragging {visibility: visible; background: transparent; background: rgba(0,0,0,.075); box-shadow: inset 0 2px 6px rgba(0,0,0,.075);}
          #dashboard.sortable-sorting .panel.dragging:before {color: #bbb;}
          #dashboard.sortable-sorting .panel.drag-shadow {box-shadow: 0 1px 3px rgba(0,0,0,.175), 0 3px 8px 0 rgba(0,0,0,.175)}

          #dashboard .block-sm .hide-in-sm {display: none;}
          #dashboard .block-dynamic .panel-body{overflow-x:hidden;}
          </style><script src="/zentao/js/jquery/tablesorter/min.js?v=pro8.4"></script>
          <script src="/zentao/js/jquery/tablesorter/metadata.js?v=pro8.4"></script>
          <style>
              .tablesorter-header-inner {cursor: pointer;}
              .tablesorter-header-inner:hover {color: #000;font-weight:bold;}
              table.tablesorter tr.tablesorter-headerRow .header.tablesorter-headerUnSorted .tablesorter-header-inner:after {font-family: ZentaoIcon; font-weight: normal; content: "\f0dc"; font-size: 14px; color: #838a9c}
              table.tablesorter tr.tablesorter-headerRow .header.headerSortUp .tablesorter-header-inner{color: #000;font-weight:bold;}
              table.tablesorter tr.tablesorter-headerRow .header.headerSortUp .tablesorter-header-inner:after{font-family: ZentaoIcon; font-weight: normal; content: "\f0d8"; color: #000;}
              table.tablesorter tr.tablesorter-headerRow .header.headerSortDown .tablesorter-header-inner{color: #000;font-weight:bold;}
              table.tablesorter tr.tablesorter-headerRow .header.headerSortDown .tablesorter-header-inner:after{font-family: ZentaoIcon; font-weight: normal; content: "\f0d7"; color: #000;}
              table.tablesorter tr.tablesorter-headerRow .header.sorter-false .tablesorter-header-inner:after{content:"";}
              table.tablesorter.table-borderless > thead > tr > th {border-bottom: 1px solid #e5e5e5;}
          </style>
          <script>
              function sortTable(selector, options)
              {
                  var $table = $(selector);
                  $table.tablesorter($.extend(
                      {
                          saveSort: true,
                          widgets: ['zebra', 'saveSort'],
                          widgetZebra: {css: ['odd', 'even'] }
                      }, $table.data(), options)).on('mouseenter', 'tbody tr', function()
                  {
                      $(this).addClass('hoover');
                  }).on('mouseleave', 'tbody tr', function()
                  {
                      $(this).removeClass('hoover');
                  }).on('click', 'tbody tr', function()
                  {
                      $(this).toggleClass('clicked');
                  });
              }
              $.fn.sortTable = function(options)
              {
                  return this.each(function()
                  {
                      sortTable(this, options);
                  });
              };
              /* sort table after page load. */
              $(function(){$('.tablesorter').sortTable();});
          </script>
          <div class="dashboard auto-fade-in fade in" id="dashboard" data-confirm-remove-block="确定移除区块吗？">
              <div class="row">
                  <div class="col-main">
                      <div class="panel block-statistic " id="block7793" data-id="7793" data-name="产品统计" data-order="0" data-url="/zentao/block-printBlock-7793-my.html">
                          <div class="panel-heading">
                              <div class="panel-title">产品统计</div>
                              <nav class="panel-actions nav nav-default">
                                  <li class="dropdown">
                                      <a href="javascript:;" data-toggle="dropdown" class="panel-action"><i class="icon icon-ellipsis-v"></i></a>
                                      <ul class="dropdown-menu pull-right">
                                          <li><a href="javascript:;" class="refresh-panel"><i class="icon-repeat"></i> 刷新区块</a></li>
                                          <li><a data-toggle="modal" href="/zentao/block-admin-7793-my.html" class="edit-block" data-title="产品统计">编辑区块</a></li>
                                          <li><a href="javascript:deleteBlock(7793);" class="remove-panel">移除区块</a></li>
                                          <li><a href="/zentao/block-admin-0-my.html" data-toggle="modal" data-type="ajax" data-width="700" data-title="添加区块">添加区块</a>
                                          </li>
                                          <li><a href="/zentao/block-ajaxReset-my.html" target="hiddenwin">恢复默认</a>
                                          </li>
                                      </ul>
                                  </li>
                              </nav>
                          </div>
                          <style>
                              .types-line {display: table; padding: 0; margin: 0 auto;}
                              .types-line > li {display: table-cell;}
                              .types-line > li > div {position: relative; padding: 18px 5px 5px; text-align: center;}
                              .types-line > li > div:before {content: ''; display: block; background: #eee;  width: 100%; height: 2px; position: absolute; left: 50%; top: 4px;}
                              .types-line > li:last-child > div:before {display: none;}
                              .types-line > li > div:after {content: ''; display: block; background: #FFFFFF; box-shadow: 0 2px 4px 0 rgba(170,170,170,0.50), 0 0 5px 0 rgba(0,0,0,0.1); width: 10px; height: 10px; position: absolute; border-radius: 50%; top: 0; left: 50%; margin-left: -2px;}
                              .types-line > li > div > small {display: block; color: #A6AAB8;}
                              .types-line > li > div > span {display: block; color: #CBD0DB; font-size: 16px;}
                              .product-info {position: relative; height: 65px;}
                              .product-info + .product-info {margin-top: 10px;}
                              .product-info .progress {position: absolute; left: 10px; top: 35px; right: 90px;}
                              .product-info .progress-info {position: absolute; left: 8px; top: 10px; width: 180px; font-size: 12px;}
                              .product-info .type-info {color: #A6AAB8; text-align: center; position: absolute; right: 0; top: 6px; width: 100px;}
                              html[lang="en"] .product-info .type-info {color: #A6AAB8; text-align: center; position: absolute; right: 0; top: 6px; width: 130px;}
                              .product-info .type-value,
                              .product-info .type-label {font-size: 12px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;}
                              .product-info .type-value {font-size: 14px;}
                              .product-info .type-value > strong {font-size: 20px; color: #3C4353;}
                              .product-info .actions {position: absolute; left: 10px; top: 14px;}
                              .block-statistic .panel-body {padding-top: 0}
                              .block-statistic .panel-body {padding-top: 0}
                              .block-statistic .tile {margin-bottom: 30px;}
                              .block-statistic .tile-title {font-size: 18px; color: #A6AAB8;}
                              .block-statistic .tile-amount {font-size: 48px; margin-bottom: 10px;}
                              .block-statistic .col-nav {border-right: 1px solid #EBF2FB; width: 260px; padding: 0;}
                              .block-statistic .nav-secondary > li {position: relative}
                              .block-statistic .nav-secondary > li:hover {background: #f5f5f5;}
                              .block-statistic .nav-secondary > li > a {font-size: 14px; color: #838A9D; position: relative; box-shadow: none; padding-left: 20px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; transition: all .2s;}
                              .block-statistic .nav-secondary > li > a:first-child {padding-right: 36px;}
                              .block-statistic .nav-secondary > li.active > a:first-child {color: #3C4353; background: transparent; box-shadow: none;}
                              .block-statistic .nav-secondary > li.active > a:first-child:hover,
                              .block-statistic .nav-secondary > li.active > a:first-child:focus,
                              .block-statistic .nav-secondary > li > a:first-child:hover {box-shadow: none; border-radius: 4px 0 0 4px;}
                              .block-statistic .nav-secondary > li.active > a:first-child:before {content: ' '; display: block; left: -1px; top: 10px; bottom: 10px; width: 4px; background: #006af1; position: absolute;}
                              .block-statistic .nav-secondary > li > a.btn-view {position: absolute; top: 0; right: 0; bottom: 0; padding: 8px; width: 36px; text-align: center; opacity: 0; background: rgba(0,0,0,.05)}
                              .block-statistic .nav-secondary > li.active > a.btn-view {box-shadow: none}
                              .block-statistic .nav-secondary > li:hover > a.btn-view {opacity: 1}
                              .block-statistic .nav-secondary > li.switch-icon {display: none;}
                              .block-statistic.block-sm .panel-body {padding-bottom: 10px; position: relative; padding-top: 45px;}
                              .block-statistic.block-sm .panel-body > .table-row,
                              .block-statistic.block-sm .panel-body > .table-row > .col {display: block; width: auto;}
                              .block-statistic.block-sm .panel-body > .table-row > .tab-content {padding: 0; margin: 0 -5px;}
                              .block-statistic.block-sm .tab-pane > .table-row > .col-5 {width: 125px;}
                              .block-statistic.block-sm .tab-pane > .table-row > .col-5 > .table-row {padding: 5px 0;}
                              .block-statistic.block-sm .col-nav {border-left: none; position: absolute; top: 0; left: 15px; right: 15px; background: #f5f5f5; border-radius: 3px;}
                              .block-statistic.block-sm .nav-secondary {display: table; width: 100%; padding: 0; table-layout: fixed;}
                              .block-statistic.block-sm .nav-secondary > li {display: none}
                              .block-statistic.block-sm .nav-secondary > li.switch-icon,
                              .block-statistic.block-sm .nav-secondary > li.active {display: table-cell; width: 100%; text-align: center;}
                              .block-statistic.block-sm .nav-secondary > li.active > a:hover {cursor: default; background: none;}
                              .block-statistic.block-sm .nav-secondary > li.switch-icon > a:hover {background: rgba(0,0,0,0.07);}
                              .block-statistic.block-sm .nav-secondary > li > a {padding: 5px 10px; border-radius: 4px;}
                              .block-statistic.block-sm .nav-secondary > li > a:before {display: none;}
                              .block-statistic.block-sm .nav-secondary > li.switch-icon {width: 40px;}
                              .block-statistic.block-sm .types-line > li > div {padding: 18px 2px 5px;}
                              .block-statistic.block-sm .nav-secondary > li.active > a:first-child:before {display: none}
                              .block-statistic.block-sm .nav-secondary > li.active > a.btn-view {width: auto; left: 0; right: 0;}
                              .block-statistic.block-sm .nav-secondary > li.active > a.btn-view > i {display: none;}
                              .block-statistic.block-sm .nav-secondary > li.active > a.btn-view:hover {cursor: pointer; background: rgba(0,0,0,.1)}

                              .status-count{margin:auto}
                              .status-count tr:first-child td:last-child{color:#000;font-weight:bold}
                          </style>
                          <script>
                              $(function()
                              {
                                  var $nav = $('#nav-5de9b731dc044');
                                  $nav.on('click', '.switch-icon', function(e)
                                  {
                                      var isPrev = $(this).is('.prev');
                                      var $activeItem = $nav.children('.active');
                                      var $next = $activeItem[isPrev ? 'prev' : 'next']('li:not(.switch-icon)');
                                      if ($next.length) $next.find('a').trigger('click');
                                      else $nav.children('li:not(.switch-icon)')[isPrev ? 'last' : 'first']().find('a').trigger('click');
                                      e.preventDefault();
                                  });
                              });
                          </script>
                          <div class="panel-body">
                              <div class="table-row">
                                  <div class="col col-nav">
                                      <ul class="nav nav-stacked nav-secondary scrollbar-hover" id="nav-5de9b731dc044">
                                          <li class="switch-icon prev"><a><i class="icon icon-arrow-left"></i></a></li>
                                          <li class="active" productid="1">
                                              <a href="javascript:;" data-target="#tabProduct1" data-toggle="tab" title="RD/产品生命周期管理">RD/产品生命周期管理</a>
                                              <a href="/zentao/product-browse-1.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="3">
                                              <a href="javascript:;" data-target="#tabProduct3" data-toggle="tab" title="SCM/供应商关系管理系统">SCM/供应商关系管理系统</a>
                                              <a href="/zentao/product-browse-3.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="2">
                                              <a href="javascript:;" data-target="#tabProduct2" data-toggle="tab" title="SCM/供应商关系管理-旧">SCM/供应商关系管理-旧</a>
                                              <a href="/zentao/product-browse-2.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="11">
                                              <a href="javascript:;" data-target="#tabProduct11" data-toggle="tab" title="MFG/散件系统">MFG/散件系统</a>
                                              <a href="/zentao/product-browse-11.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="10">
                                              <a href="javascript:;" data-target="#tabProduct10" data-toggle="tab" title="MFG/条码系统">MFG/条码系统</a>
                                              <a href="/zentao/product-browse-10.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="7">
                                              <a href="javascript:;" data-target="#tabProduct7" data-toggle="tab" title="MFG/资产管理系统">MFG/资产管理系统</a>
                                              <a href="/zentao/product-browse-7.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="6">
                                              <a href="javascript:;" data-target="#tabProduct6" data-toggle="tab" title="MFG/仓储管理系统">MFG/仓储管理系统</a>
                                              <a href="/zentao/product-browse-6.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="5">
                                              <a href="javascript:;" data-target="#tabProduct5" data-toggle="tab" title="MFG/制造执行系统">MFG/制造执行系统</a>
                                              <a href="/zentao/product-browse-5.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="4">
                                              <a href="javascript:;" data-target="#tabProduct4" data-toggle="tab" title="MFG/制造管理系统">MFG/制造管理系统</a>
                                              <a href="/zentao/product-browse-4.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="9">
                                              <a href="javascript:;" data-target="#tabProduct9" data-toggle="tab" title="MQA/品质管理系统">MQA/品质管理系统</a>
                                              <a href="/zentao/product-browse-9.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="8">
                                              <a href="javascript:;" data-target="#tabProduct8" data-toggle="tab" title="MQA/实验室管理系统">MQA/实验室管理系统</a>
                                              <a href="/zentao/product-browse-8.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="29">
                                              <a href="javascript:;" data-target="#tabProduct29" data-toggle="tab" title="IMS/电子签章">IMS/电子签章</a>
                                              <a href="/zentao/product-browse-29.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="17">
                                              <a href="javascript:;" data-target="#tabProduct17" data-toggle="tab" title="IMS/官微">IMS/官微</a>
                                              <a href="/zentao/product-browse-17.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="15">
                                              <a href="javascript:;" data-target="#tabProduct15" data-toggle="tab" title="IMS/订单中心">IMS/订单中心</a>
                                              <a href="/zentao/product-browse-15.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="13">
                                              <a href="javascript:;" data-target="#tabProduct13" data-toggle="tab" title="IMS/渠道管理系统">IMS/渠道管理系统</a>
                                              <a href="/zentao/product-browse-13.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="12">
                                              <a href="javascript:;" data-target="#tabProduct12" data-toggle="tab" title="IMS/国内营销系统">IMS/国内营销系统</a>
                                              <a href="/zentao/product-browse-12.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="24">
                                              <a href="javascript:;" data-target="#tabProduct24" data-toggle="tab" title="OMS/船务单证平台">OMS/船务单证平台</a>
                                              <a href="/zentao/product-browse-24.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="22">
                                              <a href="javascript:;" data-target="#tabProduct22" data-toggle="tab" title="OMS/海外营销系统">OMS/海外营销系统</a>
                                              <a href="/zentao/product-browse-22.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="21">
                                              <a href="javascript:;" data-target="#tabProduct21" data-toggle="tab" title="SAP/企业资源计划">SAP/企业资源计划</a>
                                              <a href="/zentao/product-browse-21.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li productid="16">
                                              <a href="javascript:;" data-target="#tabProduct16" data-toggle="tab" title="BI/经营雷达">BI/经营雷达</a>
                                              <a href="/zentao/product-browse-16.html" class="btn-view" title="需求列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li class="switch-icon next"><a><i class="icon icon-arrow-right"></i></a></li>
                                      </ul>
                                  </div>
                                  <div class="col tab-content">
                                      <div class="tab-pane fade active in" id="tabProduct1">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">512</div>
                                                      <a href="/zentao/product-browse-1.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>8</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>2</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>145</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="3.57" aria-valuemin="0" aria-valuemax="100" style="width: 3.57%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">28</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-exclamation-sign text-danger icon-sm"></i> <span class="text-muted">已延期</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="9.62" aria-valuemin="0" aria-valuemax="100" style="width: 9.62%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">52</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">5</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="96.43" aria-valuemin="0" aria-valuemax="100" style="width: 96.43%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">28</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">27</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct3">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">369</div>
                                                      <a href="/zentao/product-browse-3.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>47</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="3.45" aria-valuemin="0" aria-valuemax="100" style="width: 3.45%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">29</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-exclamation-sign text-danger icon-sm"></i> <span class="text-muted">已延期</span> <strong>2</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="11.76" aria-valuemin="0" aria-valuemax="100" style="width: 11.76%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">34</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">4</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">22</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">22</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct2">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">0</div>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct11">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">0</div>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct10">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">0</div>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct7">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">116</div>
                                                      <a href="/zentao/product-browse-7.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>18</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="4.17" aria-valuemin="0" aria-valuemax="100" style="width: 4.17%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">24</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="7.41" aria-valuemin="0" aria-valuemax="100" style="width: 7.41%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">27</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">32</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">32</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct6">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">55</div>
                                                      <a href="/zentao/product-browse-6.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>3</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="4.76" aria-valuemin="0" aria-valuemax="100" style="width: 4.76%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">21</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-exclamation-sign text-danger icon-sm"></i> <span class="text-muted">已延期</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="9.09" aria-valuemin="0" aria-valuemax="100" style="width: 9.09%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">22</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">18</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">18</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct5">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">120</div>
                                                      <a href="/zentao/product-browse-5.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>1</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>8</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width: 5%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">20</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-exclamation-sign text-danger icon-sm"></i> <span class="text-muted">已延期</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="12" aria-valuemin="0" aria-valuemax="100" style="width: 12%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">25</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>2</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">18</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">18</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct4">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">21</div>
                                                      <a href="/zentao/product-browse-4.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>2</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">14</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-exclamation-sign text-danger icon-sm"></i> <span class="text-muted">已延期</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="18.75" aria-valuemin="0" aria-valuemax="100" style="width: 18.75%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">16</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">13</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">13</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct9">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">75</div>
                                                      <a href="/zentao/product-browse-9.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>1</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="33.33" aria-valuemin="0" aria-valuemax="100" style="width: 33.33%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-exclamation-sign text-danger icon-sm"></i> <span class="text-muted">已延期</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">5</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct8">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">132</div>
                                                      <a href="/zentao/product-browse-8.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>25</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="4.76" aria-valuemin="0" aria-valuemax="100" style="width: 4.76%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">21</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-exclamation-sign text-danger icon-sm"></i> <span class="text-muted">已延期</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="12.5" aria-valuemin="0" aria-valuemax="100" style="width: 12.5%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">24</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>2</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">20</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">20</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct29">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">31</div>
                                                      <a href="/zentao/product-browse-29.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="5.26" aria-valuemin="0" aria-valuemax="100" style="width: 5.26%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">19</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="5.26" aria-valuemin="0" aria-valuemax="100" style="width: 5.26%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">19</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">15</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">15</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct17">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">67</div>
                                                      <a href="/zentao/product-browse-17.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>15</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="4.55" aria-valuemin="0" aria-valuemax="100" style="width: 4.55%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">22</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="3.85" aria-valuemin="0" aria-valuemax="100" style="width: 3.85%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">26</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="96.3" aria-valuemin="0" aria-valuemax="100" style="width: 96.3%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">27</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">26</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct15">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">74</div>
                                                      <a href="/zentao/product-browse-15.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>1</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>1</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>16</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="4.35" aria-valuemin="0" aria-valuemax="100" style="width: 4.35%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">23</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="4.55" aria-valuemin="0" aria-valuemax="100" style="width: 4.55%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">22</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">27</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">27</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct13">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">7</div>
                                                      <a href="/zentao/product-browse-13.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>1</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="16.67" aria-valuemin="0" aria-valuemax="100" style="width: 16.67%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">6</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="actions">
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct12">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">293</div>
                                                      <a href="/zentao/product-browse-12.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>3</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>2</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>1</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>29</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="9.38" aria-valuemin="0" aria-valuemax="100" style="width: 9.38%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">32</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="10.53" aria-valuemin="0" aria-valuemax="100" style="width: 10.53%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">38</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">4</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="97.3" aria-valuemin="0" aria-valuemax="100" style="width: 97.3%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">37</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">36</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct24">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">207</div>
                                                      <a href="/zentao/product-browse-24.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>2</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>97</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>1</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>10</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="14.29" aria-valuemin="0" aria-valuemax="100" style="width: 14.29%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">7</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">5</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">4</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct22">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">557</div>
                                                      <a href="/zentao/product-browse-22.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>2</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>2</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>106</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="3.03" aria-valuemin="0" aria-valuemax="100" style="width: 3.03%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">33</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-exclamation-sign text-danger icon-sm"></i> <span class="text-muted">已延期</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="7.89" aria-valuemin="0" aria-valuemax="100" style="width: 7.89%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">38</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="2.08" aria-valuemin="0" aria-valuemax="100" style="width: 2.08%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">48</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">1</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct21">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">465</div>
                                                      <a href="/zentao/product-browse-21.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>2</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>14</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>1</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>2</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>107</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="6.67" aria-valuemin="0" aria-valuemax="100" style="width: 6.67%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">30</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-exclamation-sign text-danger icon-sm"></i> <span class="text-muted">已延期</span> <strong>2</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="22.86" aria-valuemin="0" aria-valuemax="100" style="width: 22.86%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">35</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">8</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">25</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">25</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade  in" id="tabProduct16">
                                          <div class="table-row">
                                              <div class="col-6 text-middle">
                                                  <div class="tile">
                                                      <div class="tile-title">总需求</div>
                                                      <div class="tile-amount">668</div>
                                                      <a href="/zentao/product-browse-16.html" class="btn btn-primary btn-circle btn-icon-right btn-sm">查看全部<span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                                  </div>
                                                  <ul class="types-line">
                                                      <li>
                                                          <div>
                                                              <small>未开始</small>
                                                              <span>7</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已计划</small>
                                                              <span>13</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>研发中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>测试中</small>
                                                              <span>0</span>
                                                          </div>
                                                      </li>
                                                      <li>
                                                          <div>
                                                              <small>已发布</small>
                                                              <span>35</span>
                                                          </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                              <div class="col-6">
                                                  <div class="product-info">
                                                      <div class="progress-info"></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="7.41" aria-valuemin="0" aria-valuemax="100" style="width: 7.41%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有计划 :</td>
                                                                      <td class="text-left">27</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未过期 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="6.06" aria-valuemin="0" aria-valuemax="100" style="width: 6.06%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有项目 :</td>
                                                                      <td class="text-left">33</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">进行中 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info">
                                                          <i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日发布</span> <strong>1</strong>
                                                      </div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有发布 :</td>
                                                                      <td class="text-left">28</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">维护中 :</td>
                                                                      <td class="text-left">28</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="panel block-welcome " id="block7787" data-id="7787" data-name="欢迎" data-order="1" data-url="/zentao/block-printBlock-7787-my.html">
                          <nav class="panel-actions nav nav-default">
                              <li class="dropdown">
                                  <a href="javascript:;" data-toggle="dropdown" class="panel-action"><i class="icon icon-ellipsis-v"></i></a>
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="javascript:;" class="refresh-panel"><i class="icon-repeat"></i> 刷新区块</a></li>
                                      <li><a data-toggle="modal" href="/zentao/block-admin-7787-my.html" class="edit-block" data-title="欢迎">编辑区块</a></li>
                                      <li><a href="javascript:deleteBlock(7787);" class="remove-panel">移除区块</a></li>
                                      <li><a href="/zentao/block-admin-0-my.html" data-toggle="modal" data-type="ajax" data-width="700" data-title="添加区块">添加区块</a>
                                      </li>
                                      <li><a href="/zentao/block-ajaxReset-my.html" target="hiddenwin">恢复默认</a>
                                      </li>
                                  </ul>
                              </li>
                          </nav>
                          <style>
                              .block-welcome .col-left {width: 25%;}
                              .block-welcome .col-left > h4 {margin: 5px 0;line-height: 30px;}
                              .block-welcome .col-left .timeline {margin: 10px 0 0;font-size: 12px;}
                              .block-welcome .col-right > h4 {font-weight: normal;}
                              .block-welcome .col-right > h4 small {display: inline-block;margin-right: 8px;font-size: 14px;}
                              .block-welcome .col-right .tiles {padding: 10px 0 0 16px;border-left: 1px solid #e5e8ec;}
                              .block-welcome .col-right .tile {width: 20%;}
                              .block-welcome .panel-body {padding-top: 15px;}
                              .block-welcome .user-notification-icon {position: relative;display: inline-block;margin-left: 5px;}
                              .block-welcome .user-notification-icon .label-badge {position: absolute;top: 1px;right: -8px;min-width: 16px;padding: 2px;font-size: 12px;font-weight: normal;}
                              .block-welcome.block-sm .col-right {padding: 0;}
                              .block-welcome.block-sm .col-right .tiles {border-left: none; padding-left: 0}
                              .block-welcome.block-sm .tile-title {font-size: 12px; margin: 0 -10px;}
                          </style>
                          <div class="panel-move-handler"></div>
                          <div class="panel-body conatiner-fluid">
                              <div class="table-row">
                                  <div class="col col-left hide-in-sm">
                                      <h4>葛超，早上好！</h4>
                                      <ul class="timeline timeline-sm">
                                          <li><a href="/zentao/tutorial-index--createAccount.html">1. 创建帐号</a>
                                          </li><li><a href="/zentao/tutorial-index--createProduct.html">2. 创建产品</a>
                                      </li><li><a href="/zentao/tutorial-index--createStory.html">3. 创建需求</a>
                                      </li>      </ul>
                                  </div>
                                  <div class="col col-right">
                                      <h4><small class="text-muted">2019年12月06日</small> 今天剩余工作总计</h4>
                                      <div class="row tiles">
                                          <div class="col tile">
                                              <div class="tile-title">我的任务</div>
                                              <div class="tile-amount">27</div>
                                          </div>
                                          <div class="col tile">
                                              <div class="tile-title">我的BUG</div>
                                              <div class="tile-amount">0</div>
                                          </div>
                                          <div class="col tile">
                                              <div class="tile-title">我的需求</div>
                                              <div class="tile-amount">0</div>
                                          </div>
                                          <div class="col tile">
                                              <div class="tile-title">进行中的项目</div>
                                              <div class="tile-amount">46</div>
                                              <div class="tile-info">
                                                  <span class="label label-danger label-outline">已延期 6</span>
                                              </div>
                                          </div>
                                          <div class="col tile">
                                              <div class="tile-title">未关闭的产品</div>
                                              <div class="tile-amount">28</div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="panel block-dynamic " id="block7788" data-id="7788" data-name="最新动态" data-order="2" data-url="/zentao/block-printBlock-7788-my.html">
                          <div class="panel-heading">
                              <div class="panel-title">最新动态</div>
                              <nav class="panel-actions nav nav-default">
                                  <li><a href="/zentao/company-dynamic.html" title="更多"><i class="icon icon-more"></i></a>
                                  </li>            <li class="dropdown">
                                  <a href="javascript:;" data-toggle="dropdown" class="panel-action"><i class="icon icon-ellipsis-v"></i></a>
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="javascript:;" class="refresh-panel"><i class="icon-repeat"></i> 刷新区块</a></li>
                                      <li><a data-toggle="modal" href="/zentao/block-admin-7788-my.html" class="edit-block" data-title="最新动态">编辑区块</a></li>
                                      <li><a href="javascript:deleteBlock(7788);" class="remove-panel">移除区块</a></li>
                                      <li><a href="/zentao/block-admin-0-my.html" data-toggle="modal" data-type="ajax" data-width="700" data-title="添加区块">添加区块</a>
                                      </li>
                                      <li><a href="/zentao/block-ajaxReset-my.html" target="hiddenwin">恢复默认</a>
                                      </li>
                                  </ul>
                              </li>
                              </nav>
                          </div>
                          <style>
                              .block-dynamic .timeline > li .timeline-text {display: block; overflow: hidden; text-overflow: ellipsis; max-height: 20px; display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical; }
                              .block-dynamic .panel-body {padding-top: 0;}
                          </style>
                          <div class="panel-body scrollbar-hover">
                              <ul class="timeline timeline-tag-left no-margin">
                                  <li><div><span class="timeline-tag">12月06日 10:04</span> <span class="timeline-text">葛超 <em>登录系统</em>  <a href="/zentao/user-view-190701045.html" title=""></a></span></div></li><li><div><span class="timeline-tag">12月06日 10:04</span> <span class="timeline-text">徐光锋 <em>编辑了</em> Bug <a href="/zentao/bug-view-8061.html" title="暂停流程走完后物料号未传PDM与SAP">暂停流程走完后物料号未传PDM与SAP</a></span></div></li><li><div><span class="timeline-tag">12月06日 10:03</span> <span class="timeline-text">冯威威 <em>评审了</em> 用例 <a href="/zentao/testcase-view-13455.html" title="【小奥管家-扫街】验证准入门槛页提交功能">【小奥管家-扫街】验证准入门槛页提交功能</a></span></div></li><li><div><span class="timeline-tag">12月06日 10:03</span> <span class="timeline-text">冯威威 <em>编辑了</em> 用例 <a href="/zentao/testcase-view-13455.html" title="【小奥管家-扫街】验证准入门槛页提交功能">【小奥管家-扫街】验证准入门槛页提交功能</a></span></div></li><li><div><span class="timeline-tag">12月06日 10:00</span> <span class="timeline-text">刘王凤 <em>登录系统</em>  <a href="/zentao/user-view-190309235.html" title=""></a></span></div></li><li><div><span class="timeline-tag">12月06日 09:55</span> <span class="timeline-text">李海君 <em>登录系统</em>  <a href="/zentao/user-view-161121002.html" title=""></a></span></div></li><li><div><span class="timeline-tag">12月06日 09:54</span> <span class="timeline-text">150709110 <em>关闭了</em> 需求 <a href="/zentao/story-view-4776.html" title="【RQ1911040008】关于七要素决策表中增加“参考物料”的需求">【RQ1911040008】关于七要素决策表中增加“参考物料”的需求</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:54</span> <span class="timeline-text">150709110 <em>关闭了</em> 需求 <a href="/zentao/story-view-4775.html" title="【RQ1911060021】关于决策七要素价格获取变更的需求">【RQ1911060021】关于决策七要素价格获取变更的需求</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:54</span> <span class="timeline-text">150709110 <em>关闭了</em> 需求 <a href="/zentao/story-view-5037.html" title="【RQ1911160004】关于自制件估价价格无需传输到SAP的需求">【RQ1911160004】关于自制件估价价格无需传输到SAP的需求</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:51</span> <span class="timeline-text">袁凯 <em>登录系统</em>  <a href="/zentao/user-view-181105002.html" title=""></a></span></div></li><li><div><span class="timeline-tag">12月06日 09:47</span> <span class="timeline-text">余梦玲 <em>取消了</em> 任务 <a href="/zentao/task-view-35120.html" title="【BUG】【APP】用户登录点击查看已完工，直接跳转待处理页面，无法进入已完工页面查看">【BUG】【APP】用户登录点击查看已完工，直接跳转待处理页面，无法进入已完工页面查看</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:45</span> <span class="timeline-text">王锡源 <em>登录系统</em>  <a href="/zentao/user-view-ztj_wangxiyuan.html" title=""></a></span></div></li><li><div><span class="timeline-tag">12月06日 09:44</span> <span class="timeline-text">马思冬 <em>编辑了</em> 任务 <a href="/zentao/task-view-35222.html" title="【BUG】【APP】商用安装单安卓与苹果端的扫码拍照界面拍照要求不一样">【BUG】【APP】商用安装单安卓与苹果端的扫码拍照界面拍照要求不一样</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:43</span> <span class="timeline-text">马思冬 <em>编辑了</em> 任务 <a href="/zentao/task-view-35311.html" title="【反馈】【Portal】18年工单，来源途径是空的，网点无法完工">【反馈】【Portal】18年工单，来源途径是空的，网点无法完工</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:43</span> <span class="timeline-text">马思冬 <em>编辑了</em> 任务 <a href="/zentao/task-view-35310.html" title="【反馈】【CRM】手动创建汇总单功能无法使用">【反馈】【CRM】手动创建汇总单功能无法使用</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:43</span> <span class="timeline-text">马思冬 <em>编辑了</em> 任务 <a href="/zentao/task-view-35529.html" title="【反馈】【APP】扫码时报“服务单ID为空”">【反馈】【APP】扫码时报“服务单ID为空”</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:43</span> <span class="timeline-text">余梦玲 <em>取消了</em> 任务 <a href="/zentao/task-view-35144.html" title="【BUG】【APP】系统生成的调试单，座吊机录单后无牌照栏位无法完工">【BUG】【APP】系统生成的调试单，座吊机录单后无牌照栏位无法完工</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:43</span> <span class="timeline-text">马思冬 <em>编辑了</em> 任务 <a href="/zentao/task-view-35530.html" title="【反馈】【APP】录单保存时报“套机类型错误”">【反馈】【APP】录单保存时报“套机类型错误”</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:42</span> <span class="timeline-text">180701040 <em>关闭了</em> 需求 <a href="/zentao/story-view-4966.html" title="【RQ1911120010】PDM系统研发项目细节导出">【RQ1911120010】PDM系统研发项目细节导出</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:40</span> <span class="timeline-text">余梦玲 <em>取消了</em> 任务 <a href="/zentao/task-view-35222.html" title="【BUG】【APP】商用安装单安卓与苹果端的扫码拍照界面拍照要求不一样">【BUG】【APP】商用安装单安卓与苹果端的扫码拍照界面拍照要求不一样</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:40</span> <span class="timeline-text">王建国 <em>评论了</em> Bug <a href="/zentao/bug-view-8452.html" title="【CC1911180031】可用的服务商派工规则，单个查询02900155，02900155二家单位的，公司别：股份-家用，购买单位类型：电商-天猫-官旗、电商-京东-商城，有显示数据，分别为36条派工规则记录。但是通过【可用的服务商派工规则】导出全国数据，选择公司别：股份-家用，购买单位类型：电商-天猫-官旗、电商-京东-商城，导出数据87581条，未发现有这二家服务商数据，单个查询与导出数据不符。">【CC1911180031】可用的服务商派工规则，单个查询02900155，02900155二家单位的，公司别：股份-家用，购买单位类型：电商-天猫-官旗、电商-京东-商城，有显示数据，分别为36条派工规则记录。但是通过【可用的服务商派工规则】导出全国数据，选择公司别：股份-家用，购买单位类型：电商-天猫-官旗、电商-京东-商城，导出数据87581条，未发现有这二家服务商数据，单个查询与导出数据不符。</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:39</span> <span class="timeline-text">杨清清 <em>登录系统</em>  <a href="/zentao/user-view-190701201.html" title=""></a></span></div></li><li><div><span class="timeline-tag">12月06日 09:39</span> <span class="timeline-text">王华 <em>编辑了</em> 任务 <a href="/zentao/task-view-35625.html" title="正式环境执行生产事件处理脚本\20191206\01_update_刘岩.sql">正式环境执行生产事件处理脚本\20191206\01_update_刘岩.sql</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:39</span> <span class="timeline-text">王华 <em>关联子任务</em> 任务 <a href="/zentao/task-view-35544.html" title="运维计划">运维计划</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:39</span> <span class="timeline-text">王华 <em>关联到父任务</em> 任务 <a href="/zentao/task-view-35625.html" title="正式环境执行生产事件处理脚本\20191206\01_update_刘岩.sql">正式环境执行生产事件处理脚本\20191206\01_update_刘岩.sql</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:38</span> <span class="timeline-text">王建国 <em>评论了</em> Bug <a href="/zentao/bug-view-8451.html" title="【CC1911270003】总部、中心在审核配件要货单据时，修改配件，在搜索框不能对配件编码进行模糊搜索，只能输入完整的编码才能跳出配件">【CC1911270003】总部、中心在审核配件要货单据时，修改配件，在搜索框不能对配件编码进行模糊搜索，只能输入完整的编码才能跳出配件</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:38</span> <span class="timeline-text">章旭楠 <em>创建</em> 日志 <a href="/zentao/effort-view-37641.html" title="家商厨开发环境部署-一键发布搭建">家商厨开发环境部署-一键发布搭建</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:38</span> <span class="timeline-text">章旭楠 <em>记录了工时</em> 任务 <a href="/zentao/task-view-35466.html" title="搭建家商厨在线测试环境">搭建家商厨在线测试环境</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:36</span> <span class="timeline-text">章旭楠 <em>开始了</em> 任务 <a href="/zentao/task-view-35466.html" title="搭建家商厨在线测试环境">搭建家商厨在线测试环境</a></span></div></li><li><div><span class="timeline-tag">12月06日 09:36</span> <span class="timeline-text">章旭楠 <em>创建</em> 日志 <a href="/zentao/effort-view-37640.html" title="开始了任务 : 搭建家商厨在线测试环境">开始了任务 : 搭建家商厨在线测试环境</a></span></div></li>  </ul>
                          </div>
                      </div>
                      <div class="panel block-flowchart " id="block7789" data-id="7789" data-name="流程图" data-order="3" data-url="/zentao/block-printBlock-7789-my.html">
                          <div class="panel-heading">
                              <div class="panel-title">流程图</div>
                              <nav class="panel-actions nav nav-default">
                                  <li class="dropdown">
                                      <a href="javascript:;" data-toggle="dropdown" class="panel-action"><i class="icon icon-ellipsis-v"></i></a>
                                      <ul class="dropdown-menu pull-right">
                                          <li><a href="javascript:;" class="refresh-panel"><i class="icon-repeat"></i> 刷新区块</a></li>
                                          <li><a data-toggle="modal" href="/zentao/block-admin-7789-my.html" class="edit-block" data-title="流程图">编辑区块</a></li>
                                          <li><a href="javascript:deleteBlock(7789);" class="remove-panel">移除区块</a></li>
                                          <li><a href="/zentao/block-admin-0-my.html" data-toggle="modal" data-type="ajax" data-width="700" data-title="添加区块">添加区块</a>
                                          </li>
                                          <li><a href="/zentao/block-ajaxReset-my.html" target="hiddenwin">恢复默认</a>
                                          </li>
                                      </ul>
                                  </li>
                              </nav>
                          </div>
                          <div class="panel-body scrollbar-hover">
                              <div class="row row-0">
                                  <div class="flow-item flow-item-0"><div title="管理员">管理员</div></div>
                                  <div class="flow-item flow-item-1"><div title="维护公司">维护公司</div></div>
                                  <div class="flow-item flow-item-2"><div title="添加用户">添加用户</div></div>
                                  <div class="flow-item flow-item-3"><div title="维护权限">维护权限</div></div>
                              </div>
                              <div class="row row-1">
                                  <div class="flow-item flow-item-0"><div title="产品经理">产品经理</div></div>
                                  <div class="flow-item flow-item-1"><div title="创建产品">创建产品</div></div>
                                  <div class="flow-item flow-item-2"><div title="维护模块">维护模块</div></div>
                                  <div class="flow-item flow-item-3"><div title="维护计划">维护计划</div></div>
                                  <div class="flow-item flow-item-4"><div title="维护需求">维护需求</div></div>
                                  <div class="flow-item flow-item-5"><div title="创建发布">创建发布</div></div>
                              </div>
                              <div class="row row-2">
                                  <div class="flow-item flow-item-0"><div title="项目经理">项目经理</div></div>
                                  <div class="flow-item flow-item-1"><div title="创建项目">创建项目</div></div>
                                  <div class="flow-item flow-item-2"><div title="维护团队">维护团队</div></div>
                                  <div class="flow-item flow-item-3"><div title="关联产品">关联产品</div></div>
                                  <div class="flow-item flow-item-4"><div title="关联需求">关联需求</div></div>
                                  <div class="flow-item flow-item-5"><div title="分解任务">分解任务</div></div>
                              </div>
                              <div class="row row-3">
                                  <div class="flow-item flow-item-0"><div title="研发人员">研发人员</div></div>
                                  <div class="flow-item flow-item-1"><div title="领取任务和Bug">领取任务和Bug</div></div>
                                  <div class="flow-item flow-item-2"><div title="更新状态">更新状态</div></div>
                                  <div class="flow-item flow-item-3"><div title="完成任务和Bug">完成任务和Bug</div></div>
                              </div>
                              <div class="row row-4">
                                  <div class="flow-item flow-item-0"><div title="测试人员">测试人员</div></div>
                                  <div class="flow-item flow-item-1"><div title="撰写用例">撰写用例</div></div>
                                  <div class="flow-item flow-item-2"><div title="执行用例">执行用例</div></div>
                                  <div class="flow-item flow-item-3"><div title="提交Bug">提交Bug</div></div>
                                  <div class="flow-item flow-item-4"><div title="验证Bug">验证Bug</div></div>
                                  <div class="flow-item flow-item-5"><div title="关闭Bug">关闭Bug</div></div>
                              </div>
                          </div>
                          <style>
                              .block-flowchart .panel-body {padding: 0 30px 0 20px;}
                              .flow-item {float: left; width: 16.66667%; max-width: 180px; text-align: center; margin-bottom: 9px; padding-right: 15px;}
                              .flow-item > div {position: relative; padding: 5px 0 5px 8px; line-height: 20px; background: #E8EBEF; white-space:nowrap; overflow: visible; color: #3c4353}
                              .flow-item > div:before, .flow-item > div:after {content: ' '; display: block; width: 0; height: 0; border-style: solid; border-width: 15px 0 15px 10px; border-color: transparent transparent transparent #E8EBEF; position: absolute; left: 0; top: 0;}
                              .ie-8 .flow-item > div:before {display: none}
                              .flow-item > div:before {border-left-color: #fff; z-index: 1}
                              .flow-item > div:after {left: auto; right: -10px; z-index: 2}
                              .ie-8 .flow-item > div {margin-right: 10px}
                              .flow-item-0 > div {color: #838A9D; font-weight: bold; padding-left: 0;}
                              .flow-item-0 > div:before {display: none}
                              .flow-item-1 > div {background: #E3F2FD}
                              .flow-item-1 > div:after {border-left-color: #E3F2FD}
                              .flow-item-2 > div {background: #E8F5E9}
                              .flow-item-2 > div:after {border-left-color: #E8F5E9}
                              .flow-item-3 > div {background: #FFF3E0}
                              .flow-item-3 > div:after {border-left-color: #FFF3E0}
                              .flow-item-4 > div {background: #FFEBEE}
                              .flow-item-4 > div:after {border-left-color: #FFEBEE}
                              .flow-item-5 > div {background: #F3E5F5}
                              .flow-item-5 > div:after {border-left-color: #F3E5F5}
                              .flow-item-1 > div:hover {background: #1565C0; color: #fff;}
                              .flow-item-1 > div:hover:after {border-left-color: #1565C0}
                              .flow-item-2 > div:hover {background: #43A047; color: #fff;}
                              .flow-item-2 > div:hover:after {border-left-color: #43A047}
                              .flow-item-3 > div:hover {background: #EF6C00; color: #fff;}
                              .flow-item-3 > div:hover:after {border-left-color: #EF6C00}
                              .flow-item-4 > div:hover {background: #E53935; color: #fff;}
                              .flow-item-4 > div:hover:after {border-left-color: #E53935}
                              .flow-item-5 > div:hover {background: #9C27B0; color: #fff;}
                              .flow-item-5 > div:hover:after {border-left-color: #9C27B0}

                              .block-sm .flow-item {padding-right: 5px}
                              .block-sm .flow-item > div:before, .block-sm .flow-item > div:after {border-width: 15px 0 15px 6px;}
                              .block-sm .row-3 .flow-item-1, .block-sm .row-3 .flow-item-3 {width: 25%}
                              .block-sm .flow-item > div:after {right: -6px;}
                          </style>      </div>
                  </div>
                  <div class="col-side">
                      <div class="panel block-sm block-list " id="block7790" data-id="7790" data-name="我的待办" data-order="4" data-url="/zentao/block-printBlock-7790-my.html">
                          <div class="panel-heading">
                              <div class="panel-title">我的待办</div>
                              <nav class="panel-actions nav nav-default">
                                  <li><a href="/zentao/my-todo-all.html" title="更多"><i class="icon icon-more"></i></a>
                                  </li>            <li class="dropdown">
                                  <a href="javascript:;" data-toggle="dropdown" class="panel-action"><i class="icon icon-ellipsis-v"></i></a>
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="javascript:;" class="refresh-panel"><i class="icon-repeat"></i> 刷新区块</a></li>
                                      <li><a data-toggle="modal" href="/zentao/block-admin-7790-my.html" class="edit-block" data-title="我的待办">编辑区块</a></li>
                                      <li><a href="javascript:deleteBlock(7790);" class="remove-panel">移除区块</a></li>
                                      <li><a href="/zentao/block-admin-0-my.html" data-toggle="modal" data-type="ajax" data-width="700" data-title="添加区块">添加区块</a>
                                      </li>
                                      <li><a href="/zentao/block-ajaxReset-my.html" target="hiddenwin">恢复默认</a>
                                      </li>
                                  </ul>
                              </li>
                              </nav>
                          </div>
                          <style>
                              .block-todoes .panel-body {position: relative; padding-top: 42px; overflow: visible !important; padding-bottom: 0;}
                              .block-todoes .todoes-input {position: absolute; top: 0; right: 0; left: 0; padding: 0 20px 20px 20px;}
                              .block-todoes .todoes-input .form-control::-webkit-input-placeholder {font-size: 12px; line-height: 20px;color: #a4a8b6;}
                              .block-todoes .todoes-input .form-control::-moz-placeholder {font-size: 12px; line-height: 20px; color: #a4a8b6;}
                              .block-todoes .todoes-input .form-control:-ms-input-placeholder {font-size: 12px; line-height: 20px;color: #a4a8b6;}
                              .block-todoes .todoes-input .form-control::placeholder {font-size: 12px; line-height: 20px; color: #a4a8b6;}
                              .block-todoes .todoes {padding: 0 10px 10px 10px; margin: 0 -20px; max-height: 350px; overflow: auto; overflow-x:hidden}
                              .block-todoes .todoes > li {position: relative; padding: 5px 10px 5px 35px; list-style: none; white-space:nowrap;}
                              .block-todoes .todoes > li:hover {background-color: #e9f2fb;}
                              .block-todoes .todo-title {padding: 5px;}
                              .block-todoes .todo-pri {margin: 0 5px;}
                              .block-todoes .todo-time {display: inline-block; padding: 0 5px; font-size: 12px; color: #8e939a; width: 100px;}
                              .block-todoes .todo-check {position: absolute; top: 5px; left: 10px; display: block; width: 20px; height: 20px; font-size: 20px; color: transparent; cursor: pointer; background: #fff; border: 2px solid #eee; border-radius: 50%;}
                              .block-todoes .todo-check:hover {border-color: #8e939a;}
                              .block-todoes .active > .todo-check {color: #00da88; background: transparent;border: none;}
                              .block-todoes .todoes-form {position: absolute; top: -45px; right: 0; left: 0; z-index: 1011; max-width: 500px; padding: 12px 20px 20px; visibility: hidden; background: #fff; -webkit-box-shadow: 0 0 20px 0 #bdc9d8; box-shadow: 0 0 20px 0 #bdc9d8; opacity: 0;-webkit-transition: .4s cubic-bezier(.175, .885, .32, 1); -o-transition: .4s cubic-bezier(.175, .885, .32, 1); transition: .4s cubic-bezier(.175, .885, .32, 1); -webkit-transition-property: opacity, visibility; -o-transition-property: opacity, visibility; transition-property: opacity, visibility;}
                              .block-todoes .todoes-form .form-group > label {padding-left: 0;}
                              .block-todoes .todoes-form .form-group > label.text-center {text-align: center!important;}
                              .block-todoes .todoes-form > .form-group:last-child {margin-bottom: 0;}
                              .block-todoes .todoes-form > h3 {padding: 0 20px 15px; margin: 0 -20px 5px; font-size: 14px; line-height: 20px;}
                              .block-todoes.show-form .todoes-form {visibility: visible; opacity: 1;}
                          </style>
                          <div class="block-todoes">
                              <div class="panel-body">
                                  <div class="todoes-input">
                                      <div class="todo-form-trigger"><input type="text" placeholder="点击添加待办" autocomplete="off" class="form-control"></div>
                                      <form class="form-horizontal todoes-form layer" method="post" target="hiddenwin" action="/zentao/todo-create-today--block.html">
                                          <h3>添加待办</h3>
                                          <div class="form-group">
<%--                                              <label for="todoName" class="col-sm-2">待办名称</label>--%>
                                              <div class="col-sm-9 required"><input type="text" class="form-control" autocomplete="off" name="name"></div>
                                          </div>
                                          <div class="form-group">
<%--                                              <label for="todoPri" class="col-sm-2">优先级</label>--%>
                                              <div class="col-sm-4"><select name="pri" id="pri" class="form-control chosen chosen-controled" style="display: none;">
                                                  <option value="3" title="一般" data-keys="yiban yb">一般</option>
                                                  <option value="1" title="最高" data-keys="zuigao zg">最高</option>
                                                  <option value="2" title="较高" data-keys="jiaogao jg">较高</option>
                                                  <option value="4" title="最低" data-keys="zuidi zd">最低</option>
                                                  <option value="0" title="" data-keys=" "></option>
                                              </select><div class="chosen-container chosen-container-single chosen-compact chosen-with-search" style="width: 100%;" title="" id="pri_chosen"><a class="chosen-single" tabindex="-1"><span title="一般">一般</span><div><b></b></div><div class="chosen-search"><input type="text" autocomplete="off" placeholder="一般"></div></a><div class="chosen-drop"><ul class="chosen-results"></ul></div></div>
                                              </div>
                                          </div>
                                          <div class="form-group">
                                              <label for="todoDate" class="col-sm-2">日期</label>
                                              <div class="col-sm-9 ">
                                                  <div class="input-control has-icon-right">
                                                      <input type="text" class="form-control date" id="todoDate" name="date" placeholder="" autocomplete="off">
                                                      <label for="todoDate" class="input-control-icon-right"><i class="icon icon-delay"></i></label>
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="form-group">
                                              <label for="todoBegin" class="col-sm-2">起止时间</label>
                                              <div class="col-sm-4">
                                                  <select name="begin" id="todoBegin" class="form-control">
                                                      <option value="">暂时不设定时间</option>
                                                      <option value="10:10">10:10</option><option value="10:20">10:20</option><option value="10:30">10:30</option><option value="10:40">10:40</option><option value="10:50">10:50</option><option value="11:00">11:00</option><option value="11:10">11:10</option><option value="11:20">11:20</option><option value="11:30">11:30</option><option value="11:40">11:40</option><option value="11:50">11:50</option><option value="12:00">12:00</option><option value="12:10">12:10</option><option value="12:20">12:20</option><option value="12:30">12:30</option><option value="12:40">12:40</option><option value="12:50">12:50</option><option value="13:00">13:00</option><option value="13:10">13:10</option><option value="13:20">13:20</option><option value="13:30">13:30</option><option value="13:40">13:40</option><option value="13:50">13:50</option><option value="14:00">14:00</option><option value="14:10">14:10</option><option value="14:20">14:20</option><option value="14:30">14:30</option><option value="14:40">14:40</option><option value="14:50">14:50</option><option value="15:00">15:00</option><option value="15:10">15:10</option><option value="15:20">15:20</option><option value="15:30">15:30</option><option value="15:40">15:40</option><option value="15:50">15:50</option><option value="16:00">16:00</option><option value="16:10">16:10</option><option value="16:20">16:20</option><option value="16:30">16:30</option><option value="16:40">16:40</option><option value="16:50">16:50</option><option value="17:00">17:00</option><option value="17:10">17:10</option><option value="17:20">17:20</option><option value="17:30">17:30</option><option value="17:40">17:40</option><option value="17:50">17:50</option><option value="18:00">18:00</option><option value="18:10">18:10</option><option value="18:20">18:20</option><option value="18:30">18:30</option><option value="18:40">18:40</option><option value="18:50">18:50</option><option value="19:00">19:00</option><option value="19:10">19:10</option><option value="19:20">19:20</option><option value="19:30">19:30</option><option value="19:40">19:40</option><option value="19:50">19:50</option><option value="20:00">20:00</option><option value="20:10">20:10</option><option value="20:20">20:20</option><option value="20:30">20:30</option><option value="20:40">20:40</option><option value="20:50">20:50</option><option value="21:00">21:00</option><option value="21:10">21:10</option><option value="21:20">21:20</option><option value="21:30">21:30</option><option value="21:40">21:40</option><option value="21:50">21:50</option><option value="22:00">22:00</option><option value="22:10">22:10</option><option value="22:20">22:20</option><option value="22:30">22:30</option><option value="22:40">22:40</option><option value="22:50">22:50</option><option value="23:00">23:00</option><option value="23:10">23:10</option><option value="23:20">23:20</option><option value="23:30">23:30</option><option value="23:40">23:40</option><option value="23:50">23:50</option><option value="00:00">00:00</option><option value="05:10">05:10</option><option value="05:20">05:20</option><option value="05:30">05:30</option><option value="05:40">05:40</option><option value="05:50">05:50</option><option value="06:00">06:00</option><option value="06:10">06:10</option><option value="06:20">06:20</option><option value="06:30">06:30</option><option value="06:40">06:40</option><option value="06:50">06:50</option><option value="07:00">07:00</option><option value="07:10">07:10</option><option value="07:20">07:20</option><option value="07:30">07:30</option><option value="07:40">07:40</option><option value="07:50">07:50</option><option value="08:00">08:00</option><option value="08:10">08:10</option><option value="08:20">08:20</option><option value="08:30">08:30</option><option value="08:40">08:40</option><option value="08:50">08:50</option><option value="09:00">09:00</option><option value="09:10">09:10</option><option value="09:20">09:20</option><option value="09:30">09:30</option><option value="09:40">09:40</option><option value="09:50">09:50</option><option value="10:00">10:00</option></select>
                                              </div>
                                              <label class="col-sm-1 text-center hide-empty-begin" for="todoEnd"> ~ </label>
                                              <div class="col-sm-4 hide-empty-begin">
                                                  <select name="end" id="todoEnd" class="form-control"><option value="10:10">10:10</option><option value="10:20">10:20</option><option value="10:30">10:30</option><option value="10:40">10:40</option><option value="10:50">10:50</option><option value="11:00">11:00</option><option value="11:10">11:10</option><option value="11:20">11:20</option><option value="11:30">11:30</option><option value="11:40">11:40</option><option value="11:50">11:50</option><option value="12:00">12:00</option><option value="12:10">12:10</option><option value="12:20">12:20</option><option value="12:30">12:30</option><option value="12:40">12:40</option><option value="12:50">12:50</option><option value="13:00">13:00</option><option value="13:10">13:10</option><option value="13:20">13:20</option><option value="13:30">13:30</option><option value="13:40">13:40</option><option value="13:50">13:50</option><option value="14:00">14:00</option><option value="14:10">14:10</option><option value="14:20">14:20</option><option value="14:30">14:30</option><option value="14:40">14:40</option><option value="14:50">14:50</option><option value="15:00">15:00</option><option value="15:10">15:10</option><option value="15:20">15:20</option><option value="15:30">15:30</option><option value="15:40">15:40</option><option value="15:50">15:50</option><option value="16:00">16:00</option><option value="16:10">16:10</option><option value="16:20">16:20</option><option value="16:30">16:30</option><option value="16:40">16:40</option><option value="16:50">16:50</option><option value="17:00">17:00</option><option value="17:10">17:10</option><option value="17:20">17:20</option><option value="17:30">17:30</option><option value="17:40">17:40</option><option value="17:50">17:50</option><option value="18:00">18:00</option><option value="18:10">18:10</option><option value="18:20">18:20</option><option value="18:30">18:30</option><option value="18:40">18:40</option><option value="18:50">18:50</option><option value="19:00">19:00</option><option value="19:10">19:10</option><option value="19:20">19:20</option><option value="19:30">19:30</option><option value="19:40">19:40</option><option value="19:50">19:50</option><option value="20:00">20:00</option><option value="20:10">20:10</option><option value="20:20">20:20</option><option value="20:30">20:30</option><option value="20:40">20:40</option><option value="20:50">20:50</option><option value="21:00">21:00</option><option value="21:10">21:10</option><option value="21:20">21:20</option><option value="21:30">21:30</option><option value="21:40">21:40</option><option value="21:50">21:50</option><option value="22:00">22:00</option><option value="22:10">22:10</option><option value="22:20">22:20</option><option value="22:30">22:30</option><option value="22:40">22:40</option><option value="22:50">22:50</option><option value="23:00">23:00</option><option value="23:10">23:10</option><option value="23:20">23:20</option><option value="23:30">23:30</option><option value="23:40">23:40</option><option value="23:50">23:50</option><option value="00:00">00:00</option><option value="05:10">05:10</option><option value="05:20">05:20</option><option value="05:30">05:30</option><option value="05:40">05:40</option><option value="05:50">05:50</option><option value="06:00">06:00</option><option value="06:10">06:10</option><option value="06:20">06:20</option><option value="06:30">06:30</option><option value="06:40">06:40</option><option value="06:50">06:50</option><option value="07:00">07:00</option><option value="07:10">07:10</option><option value="07:20">07:20</option><option value="07:30">07:30</option><option value="07:40">07:40</option><option value="07:50">07:50</option><option value="08:00">08:00</option><option value="08:10">08:10</option><option value="08:20">08:20</option><option value="08:30">08:30</option><option value="08:40">08:40</option><option value="08:50">08:50</option><option value="09:00">09:00</option><option value="09:10">09:10</option><option value="09:20">09:20</option><option value="09:30">09:30</option><option value="09:40">09:40</option><option value="09:50">09:50</option><option value="10:00">10:00</option></select>
                                              </div>
                                          </div>
                                          <div class="form-group">
                                              <div class="col-sm-2"></div>
                                              <div class="col-sm-10">
                                                  <div class="checkbox-primary">
                                                      <input type="checkbox" name="private" id="private" value="1">
                                                      <label for="private">私人事务</label>
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="form-group">
                                              <div class="col-sm-2"></div>
                                              <div class="col-sm-10 form-actions no-margin">
                                                  <input type="hidden" name="type" id="type" value="custom">
                                                  <button type="button" class="btn btn-primary btn-wide" onclick="ajaxCreateTodo(this)">保存</button>            <button type="button" class="btn btn-wide todo-form-trigger" data-trigger="false">返回</button>
                                              </div>
                                          </div>
                                      </form>
                                  </div>
                                  <ul class="todoes">
                                  </ul>
                              </div>
                              <script>
                                  $(function()
                                  {
                                      // Todoes block
                                      if(!$.fn.blockTodoes)
                                      {
                                          $.fn.blockTodoes = function()
                                          {
                                              return this.each(function()
                                              {
                                                  var $block = $(this);
                                                  if($block.data('blockTodoes')) return;
                                                  $block.data('blockTodoes', 1);
                                                  var $form = $block.find('form');
                                                  var $titleInput = $form.find('[name="name"]');

                                                  var toggleForm = function(toggle)
                                                  {
                                                      if(toggle === undefined)
                                                      {
                                                          toggle = !$block.hasClass('show-form');
                                                      }
                                                      $block.toggleClass('show-form', toggle);
                                                      $block.find('.date').datepicker();
                                                      if(toggle)
                                                      {
                                                          setTimeout(function() {$titleInput.focus();}, 50);
                                                      }
                                                  };
                                                  $block.on('click', '.todo-form-trigger', function()
                                                  {
                                                      toggleForm($(this).data('trigger'));
                                                  });
                                                  $form.timeSpanControl(
                                                      {
                                                          onChange: function($control)
                                                          {
                                                              $control.trigger('chosen:updated');
                                                          }
                                                      }).find('[name="begin"]').trigger('chosen:updated');
                                              });
                                          };
                                      }

                                      $('.block-todoes').blockTodoes().on('click', '.todo-check', function()
                                      {
                                          var $liTag     = $(this).closest('li');
                                          var isFinished = $liTag.hasClass('active');
                                          var todoID     = $liTag.data('id');
                                          var methodName = isFinished ? 'activate' : 'finish';
                                          $.get(createLink('todo', methodName, "todoID=" + todoID), function()
                                          {
                                              if(!isFinished) $liTag.addClass('active');
                                              if(isFinished) $liTag.removeClass('active');
                                          });
                                      });
                                  });

                                  function ajaxCreateTodo(obj)
                                  {
                                      var $todoes = $(obj).closest('.block-todoes');
                                      var $form   = $(obj).closest('form');
                                      var $name   = $form.find("input[name='name']").val();
                                      if($name == '')
                                      {
                                          $("input[name='name']").addClass('has-error');
                                          $('#nameLabel').remove();
                                          $("input[name='name']").after('<div id="nameLabel" class="text-danger help-text">『待办名称』不能为空。</div>');
                                          setTimeout('clearError()', 2000)
                                          return false;
                                      }
                                      $.ajax(
                                          {
                                              type: "POST",
                                              dataType: "json",
                                              url: $form.attr('action'),
                                              data: $form.serialize(),
                                              success: function(todo)
                                              {
                                                  $todoes.removeClass('show-form');
                                                  $todoes.closest('.show-form').removeClass('show-form');
                                                  $todoes.find('.show-form').removeClass('show-form');
                                                  refreshBlock($todoes.parents('div.panel[id^=block]'));
                                              }
                                          });
                                  }

                                  function clearError()
                                  {
                                      $("input[name='name']").removeClass('has-error');
                                      $('#nameLabel').remove();
                                  }
                              </script>
                          </div>
                      </div>
                      <div class="panel block-sm block-overview " id="block7792" data-id="7792" data-name="项目总览" data-order="5" data-url="/zentao/block-printBlock-7792-my.html">
                          <div class="panel-heading">
                              <div class="panel-title">项目总览</div>
                              <nav class="panel-actions nav nav-default">
                                  <li class="dropdown">
                                      <a href="javascript:;" data-toggle="dropdown" class="panel-action"><i class="icon icon-ellipsis-v"></i></a>
                                      <ul class="dropdown-menu pull-right">
                                          <li><a href="javascript:;" class="refresh-panel"><i class="icon-repeat"></i> 刷新区块</a></li>
                                          <li><a data-toggle="modal" href="/zentao/block-admin-7792-my.html" class="edit-block" data-title="项目总览">编辑区块</a></li>
                                          <li><a href="javascript:deleteBlock(7792);" class="remove-panel">移除区块</a></li>
                                          <li><a href="/zentao/block-admin-0-my.html" data-toggle="modal" data-type="ajax" data-width="700" data-title="添加区块">添加区块</a>
                                          </li>
                                          <li><a href="/zentao/block-ajaxReset-my.html" target="hiddenwin">恢复默认</a>
                                          </li>
                                      </ul>
                                  </li>
                              </nav>
                          </div>
                          <style>
                              .block-overview .tile-amount {font-size: 48px; margin-bottom: 10px;}
                          </style>
                          <div class="panel-body table-row">
                              <div class="col-4 text-middle text-center">
                                  <div class="tile">
                                      <div class="tile-title">所有项目</div>
                                      <div class="tile-amount">501</div>
                                      <a class="btn btn-primary btn-circle btn-icon-right btn-sm" href="/zentao/project-all.html">查看所有 <span class="label label-badge label-icon"><i class="icon icon-arrow-right"></i></span></a>
                                  </div>
                              </div>
                              <div class="col-8 text-middle">
                                  <ul class="status-bars">
                                      <li>
                                          <span class="bar" style="height: 2%"><span class="value">9</span></span>
                                          <span class="title">未开始</span>
                                      </li>
                                      <li>
                                          <span class="bar" style="height: 7%"><span class="value">37</span></span>
                                          <span class="title">进行中</span>
                                      </li>
                                      <li>
                                          <span class="bar" style="height: 0%"><span class="value">0</span></span>
                                          <span class="title">已挂起</span>
                                      </li>
                                      <li>
                                          <span class="bar" style="height: 91%"><span class="value">455</span></span>
                                          <span class="title">已关闭</span>
                                      </li>
                                  </ul>
                              </div>
                          </div>
                      </div>
                      <div class="panel block-sm block-overview " id="block7794" data-id="7794" data-name="产品总览" data-order="6" data-url="/zentao/block-printBlock-7794-my.html">
                          <div class="panel-heading">
                              <div class="panel-title">产品总览</div>
                              <nav class="panel-actions nav nav-default">
                                  <li class="dropdown">
                                      <a href="javascript:;" data-toggle="dropdown" class="panel-action"><i class="icon icon-ellipsis-v"></i></a>
                                      <ul class="dropdown-menu pull-right">
                                          <li><a href="javascript:;" class="refresh-panel"><i class="icon-repeat"></i> 刷新区块</a></li>
                                          <li><a data-toggle="modal" href="/zentao/block-admin-7794-my.html" class="edit-block" data-title="产品总览">编辑区块</a></li>
                                          <li><a href="javascript:deleteBlock(7794);" class="remove-panel">移除区块</a></li>
                                          <li><a href="/zentao/block-admin-0-my.html" data-toggle="modal" data-type="ajax" data-width="700" data-title="添加区块">添加区块</a>
                                          </li>
                                          <li><a href="/zentao/block-ajaxReset-my.html" target="hiddenwin">恢复默认</a>
                                          </li>
                                      </ul>
                                  </li>
                              </nav>
                          </div>
                          <style>
                              .block-overview .status-list li + li {margin-top: 5px;}
                              .block-overview .status-list li > strong {font-size: 16px;}
                              .progress-pie {position: relative;}
                              .progress-pie .progress-info {position: absolute; width: 100%; height: 100%; left: 0; top: 0; text-align: center; padding-top: 25px;}
                              .progress-pie .progress-info > small {display: block; color: #A6AAB8; line-height: 14px;}
                              .progress-pie .progress-info > strong {display: block; font-size: 36px; line-height: 40px;}
                          </style>
                          <div class="panel-body table-row">
                              <div class="col-6 text-middle text-center">
                                  <div class="progress-pie inline-block progress-pie-100" data-value="93" data-doughnut-size="80">
                                      <canvas width="100" height="100" style="width: 100px; height: 100px;"></canvas>
                                      <div class="progress-info">
                                          <small>所有产品</small>
                                          <strong>30</strong>
                                      </div>
                                  </div>
                              </div>
                              <div class="col-6 text-middle">
                                  <ul class="list-unstyled status-list">
                                      <li><span class="status-product status-unclosed">正常</span> &nbsp; <strong>28</strong></li>
                                      <li><span class="status-product status-closed">结束</span> &nbsp; <strong>2</strong></li>
                                  </ul>
                              </div>
                          </div>
                      </div>
                      <div class="panel block-sm block-bug " id="block7795" data-id="7795" data-name="指派给我的Bug" data-order="7" data-url="/zentao/block-printBlock-7795-my.html">
                          <div class="panel-heading">
                              <div class="panel-title">指派给我的Bug</div>
                              <nav class="panel-actions nav nav-default">
                                  <li><a href="/zentao/my-bug-assignedTo.html" title="更多"><i class="icon icon-more"></i></a>
                                  </li>            <li class="dropdown">
                                  <a href="javascript:;" data-toggle="dropdown" class="panel-action"><i class="icon icon-ellipsis-v"></i></a>
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="javascript:;" class="refresh-panel"><i class="icon-repeat"></i> 刷新区块</a></li>
                                      <li><a data-toggle="modal" href="/zentao/block-admin-7795-my.html" class="edit-block" data-title="指派给我的Bug">编辑区块</a></li>
                                      <li><a href="javascript:deleteBlock(7795);" class="remove-panel">移除区块</a></li>
                                      <li><a href="/zentao/block-admin-0-my.html" data-toggle="modal" data-type="ajax" data-width="700" data-title="添加区块">添加区块</a>
                                      </li>
                                      <li><a href="/zentao/block-ajaxReset-my.html" target="hiddenwin">恢复默认</a>
                                      </li>
                                  </ul>
                              </li>
                              </nav>
                          </div>
                          <div class="empty-tip">暂无信息</div>
                      </div>
                      <div class="panel block-sm block-statistic " id="block7791" data-id="7791" data-name="项目统计" data-order="8" data-url="/zentao/block-printBlock-7791-my.html">
                          <div class="panel-heading">
                              <div class="panel-title">项目统计</div>
                              <nav class="panel-actions nav nav-default">
                                  <li class="dropdown">
                                      <a href="javascript:;" data-toggle="dropdown" class="panel-action"><i class="icon icon-ellipsis-v"></i></a>
                                      <ul class="dropdown-menu pull-right">
                                          <li><a href="javascript:;" class="refresh-panel"><i class="icon-repeat"></i> 刷新区块</a></li>
                                          <li><a data-toggle="modal" href="/zentao/block-admin-7791-my.html" class="edit-block" data-title="项目统计">编辑区块</a></li>
                                          <li><a href="javascript:deleteBlock(7791);" class="remove-panel">移除区块</a></li>
                                          <li><a href="/zentao/block-admin-0-my.html" data-toggle="modal" data-type="ajax" data-width="700" data-title="添加区块">添加区块</a>
                                          </li>
                                          <li><a href="/zentao/block-ajaxReset-my.html" target="hiddenwin">恢复默认</a>
                                          </li>
                                      </ul>
                                  </li>
                              </nav>
                          </div>
                          <style>
                              .types-line {display: table; padding: 0; margin: 0 auto;}
                              .types-line > li {display: table-cell;}
                              .types-line > li > div {position: relative; padding: 18px 5px 5px; text-align: center;}
                              .types-line > li > div:before {content: ''; display: block; background: #eee;  width: 100%; height: 2px; position: absolute; left: 50%; top: 4px;}
                              .types-line > li:last-child > div:before {display: none;}
                              .types-line > li > div:after {content: ''; display: block; background: #FFFFFF; box-shadow: 0 2px 4px 0 rgba(170,170,170,0.50), 0 0 5px 0 rgba(0,0,0,0.1); width: 10px; height: 10px; position: absolute; border-radius: 50%; top: 0; left: 50%; margin-left: -2px;}
                              .types-line > li > div > small {display: block; color: #A6AAB8;}
                              .types-line > li > div > span {display: block; color: #CBD0DB; font-size: 16px;}
                              .product-info {position: relative; height: 65px;}
                              .product-info + .product-info {margin-top: 10px;}
                              .product-info .progress {position: absolute; left: 10px; top: 35px; right: 100px;}
                              .product-info .progress-info {position: absolute; left: 8px; top: 10px; width: 180px; font-size: 12px;}
                              .product-info .type-info {color: #A6AAB8; text-align: center; position: absolute; right: 0; top: 6px; width: 100px;}
                              html[lang="en"] .product-info .type-info {color: #A6AAB8; text-align: center; position: absolute; right: 0; top: 6px; width: 130px;}
                              .product-info .type-value,
                              .product-info .type-label {font-size: 12px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;}
                              .product-info .type-value {font-size: 14px;}
                              .product-info .type-value > strong {font-size: 20px; color: #3C4353;}
                              .product-info .actions {position: absolute; left: 10px; top: 14px;}
                              .block-statistic .panel-body {padding-top: 0}
                              .block-statistic .tile {margin-bottom: 30px;}
                              .block-statistic .tile-title {font-size: 18px; color: #A6AAB8;}
                              .block-statistic .tile-amount {font-size: 48px; margin-bottom: 10px;}
                              .block-statistic .col-nav {border-right: 1px solid #EBF2FB; width: 260px; padding: 0;}
                              .block-statistic .nav-secondary > li {position: relative}
                              .block-statistic .nav-secondary > li > a {font-size: 14px; color: #838A9D; position: relative; box-shadow: none; padding-left: 20px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; transition: all .2s;}
                              .block-statistic .nav-secondary > li > a:first-child {padding-right: 36px;}
                              .block-statistic .nav-secondary > li.active > a:first-child {color: #3C4353; background: transparent; box-shadow: none;}
                              .block-statistic .nav-secondary > li.active > a:first-child:hover,
                              .block-statistic .nav-secondary > li.active > a:first-child:focus,
                              .block-statistic .nav-secondary > li > a:first-child:hover {box-shadow: none; border-radius: 4px 0 0 4px;}
                              .block-statistic .nav-secondary > li.active > a:first-child:before {content: ' '; display: block; left: -1px; top: 10px; bottom: 10px; width: 4px; background: #006af1; position: absolute;}
                              .block-statistic .nav-secondary > li > a.btn-view {position: absolute; top: 0; right: 0; bottom: 0; padding: 8px; width: 36px; text-align: center; opacity: 0;}
                              .block-statistic .nav-secondary > li:hover > a.btn-view {opacity: 1}
                              .block-statistic .nav-secondary > li.active > a.btn-view {box-shadow: none}
                              .block-statistic .nav-secondary > li.switch-icon {display: none;}
                              .block-statistic.block-sm .panel-body {padding-bottom: 10px; position: relative; padding-top: 45px; border-radius: 3px;}
                              .block-statistic.block-sm .panel-body > .table-row,
                              .block-statistic.block-sm .panel-body > .table-row > .col {display: block; width: auto;}
                              .block-statistic.block-sm .panel-body > .table-row > .tab-content {padding: 0; margin: 0 -5px;}
                              .block-statistic.block-sm .tab-pane > .table-row > .col-5 {width: 125px;}
                              .block-statistic.block-sm .tab-pane > .table-row > .col-5 > .table-row {padding: 5px 0;}
                              .block-statistic.block-sm .col-nav {border-left: none; position: absolute; top: 0; left: 15px; right: 15px; background: #f5f5f5;}
                              .block-statistic.block-sm .nav-secondary {display: table; width: 100%; padding: 0; table-layout: fixed;}
                              .block-statistic.block-sm .nav-secondary > li {display: none}
                              .block-statistic.block-sm .nav-secondary > li.switch-icon,
                              .block-statistic.block-sm .nav-secondary > li.active {display: table-cell; width: 100%; text-align: center;}
                              .block-statistic.block-sm .nav-secondary > li.active > a:hover {cursor: default; background: none;}
                              .block-statistic.block-sm .nav-secondary > li.switch-icon > a:hover {background: rgba(0,0,0,0.07);}
                              .block-statistic.block-sm .nav-secondary > li > a {padding: 5px 10px; border-radius: 4px;}
                              .block-statistic.block-sm .nav-secondary > li > a:before {display: none;}
                              .block-statistic.block-sm .nav-secondary > li.switch-icon {width: 40px;}
                              .block-statistic.block-sm .nav-secondary > li.active > a:first-child:before {display: none}
                              .block-statistic.block-sm .nav-secondary > li.active > a.btn-view {width: auto; left: 0; right: 0;}
                              .block-statistic.block-sm .nav-secondary > li.active > a.btn-view > i {display: none;}
                              .block-statistic.block-sm .nav-secondary > li.active > a.btn-view:hover {cursor: pointer; background: rgba(0,0,0,.1)}

                              .status-count{margin:auto}
                              .status-count tr:first-child td:last-child{color:#000;font-weight:bold}
                          </style>
                          <script>
                              $(function()
                              {
                                  var $nav = $('#nav-5de9b731e4f1d');
                                  $nav.on('click', '.switch-icon', function(e)
                                  {
                                      var isPrev = $(this).is('.prev');
                                      var $activeItem = $nav.children('.active');
                                      var $next = $activeItem[isPrev ? 'prev' : 'next']('li:not(.switch-icon)');
                                      if ($next.length) $next.find('a').trigger('click');
                                      else $nav.children('li:not(.switch-icon)')[isPrev ? 'last' : 'first']().find('a').trigger('click');
                                      e.preventDefault();
                                  });
                              });
                          </script>
                          <div class="panel-body">
                              <div class="table-row">
                                  <div class="col col-nav">
                                      <ul class="nav nav-stacked nav-secondary scrollbar-hover" id="nav-5de9b731e4f1d">
                                          <li class="switch-icon prev"><a><i class="icon icon-arrow-left"></i></a></li>
                                          <li class="active" projectid="594">
                                              <a href="###" data-target="#tab3Content594" data-toggle="tab">EAM-20191219</a>
                                              <a href="/zentao/project-task-594.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="593">
                                              <a href="###" data-target="#tab3Content593" data-toggle="tab">LIMS-20191219</a>
                                              <a href="/zentao/project-task-593.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="592">
                                              <a href="###" data-target="#tab3Content592" data-toggle="tab">奥云商模块管理</a>
                                              <a href="/zentao/project-task-592.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="591">
                                              <a href="###" data-target="#tab3Content591" data-toggle="tab"> SDP-20191219</a>
                                              <a href="/zentao/project-task-591.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="588">
                                              <a href="###" data-target="#tab3Content588" data-toggle="tab">LMS-20191210</a>
                                              <a href="/zentao/project-task-588.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="587">
                                              <a href="###" data-target="#tab3Content587" data-toggle="tab">ERP-20191231</a>
                                              <a href="/zentao/project-task-587.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="586">
                                              <a href="###" data-target="#tab3Content586" data-toggle="tab">物资WMS</a>
                                              <a href="/zentao/project-task-586.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="583">
                                              <a href="###" data-target="#tab3Content583" data-toggle="tab">CSS-20191209</a>
                                              <a href="/zentao/project-task-583.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="578">
                                              <a href="###" data-target="#tab3Content578" data-toggle="tab">成仓WMS推广</a>
                                              <a href="/zentao/project-task-578.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="577">
                                              <a href="###" data-target="#tab3Content577" data-toggle="tab">QMS-20191219</a>
                                              <a href="/zentao/project-task-577.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="570">
                                              <a href="###" data-target="#tab3Content570" data-toggle="tab">PDM-20191219</a>
                                              <a href="/zentao/project-task-570.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="569">
                                              <a href="###" data-target="#tab3Content569" data-toggle="tab">ARS-20191219</a>
                                              <a href="/zentao/project-task-569.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="568">
                                              <a href="###" data-target="#tab3Content568" data-toggle="tab">CSS-20191219</a>
                                              <a href="/zentao/project-task-568.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="566">
                                              <a href="###" data-target="#tab3Content566" data-toggle="tab">IMS-20191210</a>
                                              <a href="/zentao/project-task-566.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="564">
                                              <a href="###" data-target="#tab3Content564" data-toggle="tab">MES迭代推广项目</a>
                                              <a href="/zentao/project-task-564.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="559">
                                              <a href="###" data-target="#tab3Content559" data-toggle="tab">Jenkins持续交付平台二期</a>
                                              <a href="/zentao/project-task-559.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="555">
                                              <a href="###" data-target="#tab3Content555" data-toggle="tab">OMS-20191219</a>
                                              <a href="/zentao/project-task-555.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="546">
                                              <a href="###" data-target="#tab3Content546" data-toggle="tab">SAT-20191121</a>
                                              <a href="/zentao/project-task-546.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="545">
                                              <a href="###" data-target="#tab3Content545" data-toggle="tab">PMS五期项目</a>
                                              <a href="/zentao/project-task-545.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li projectid="544">
                                              <a href="###" data-target="#tab3Content544" data-toggle="tab">ERP-20191219</a>
                                              <a href="/zentao/project-task-544.html" class="btn-view" title="任务列表"><i class="icon-arrow-right text-primary"></i></a>
                                          </li>
                                          <li class="switch-icon next"><a><i class="icon icon-arrow-right"></i></a></li>
                                      </ul>
                                  </div>
                                  <div class="col tab-content">
                                      <div class="tab-pane fade active in" id="tab3Content594">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space progress-pie-120" data-value="0" data-doughnut-size="84">
                                                      <canvas width="120" height="120" style="width: 120px; height: 120px;"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>0<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>257 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>257 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">15</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">15</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">7</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">7</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content593">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="0" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>0<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content592">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="0" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>0<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content591">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="0" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>0<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">8</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">8</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content588">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="33" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>33<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>30 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>10 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>20 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" style="width: 33%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">15</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">10</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">5</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">5</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content587">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="26" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>26<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>120 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>31 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>89 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">10</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">8</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content586">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="0" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>0<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content583">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="51" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>51<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>519 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>193 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>186 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>1</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100" style="width: 67%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">12</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">4</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>3</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="71" aria-valuemin="0" aria-valuemax="100" style="width: 71%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">7</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content578">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="100" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>100<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>32 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>32 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content577">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="31" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>31<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>4 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>9 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>1</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="14" aria-valuemin="0" aria-valuemax="100" style="width: 14%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">7</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">6</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">4</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">4</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">7</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">7</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content570">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="17" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>17<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>299 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>50 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>241 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>19</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="29" aria-valuemin="0" aria-valuemax="100" style="width: 29%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">80</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">57</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">31</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">31</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content569">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="4" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>4<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>668 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>24 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>644 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="6" aria-valuemin="0" aria-valuemax="100" style="width: 6%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">31</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">29</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">13</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">13</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content568">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="22" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>22<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>895 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>194 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>673 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>1</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="38" aria-valuemin="0" aria-valuemax="100" style="width: 38%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">34</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">21</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">9</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">9</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" style="width: 33%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content566">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="62" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>62<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>194 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>96 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>58 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">20</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">11</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">5</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">5</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content564">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="96" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>96<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>377 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>336 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>13 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>1</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">40</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">2</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>4</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">65</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">65</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">3</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content559">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="30" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>30<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>416 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>152 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>360 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">8</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">6</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">8</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">8</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content555">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="22" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>22<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>113.5 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>25 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>90 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>2</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="32" aria-valuemin="0" aria-valuemax="100" style="width: 32%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">19</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">13</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">6</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">6</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content546">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="0" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>0<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content545">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="0" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>0<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>0 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="tab-pane fade" id="tab3Content544">
                                          <div class="table-row">
                                              <div class="col-5 text-middle text-center">
                                                  <div class="progress-pie inline-block space" data-value="54" data-doughnut-size="84">
                                                      <canvas width="120" height="120"></canvas>
                                                      <div class="progress-info">
                                                          <small>已完成</small>
                                                          <strong>54<small>%</small></strong>
                                                      </div>
                                                  </div>
                                                  <div class="table-row text-center small text-muted with-padding">
                                                      <div class="col-4 text-bottom">
                                                          <div>预计</div>
                                                          <div>253 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-primary"></span>
                                                          <div>消耗</div>
                                                          <div>135 <span class="muted">小时</span></div>
                                                      </div>
                                                      <div class="col-4">
                                                          <span class="label label-dot label-pale"></span>
                                                          <div>剩余</div>
                                                          <div>115 <span class="muted">小时</span></div>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-7">
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨日完成</span> <strong>1</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总任务 :</td>
                                                                      <td class="text-left">15</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未完成 :</td>
                                                                      <td class="text-left">12</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">已发布</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">总需求 :</td>
                                                                      <td class="text-left">5</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未关闭 :</td>
                                                                      <td class="text-left">5</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="product-info">
                                                      <div class="progress-info"><i class="icon icon-check-circle text-success icon-sm"></i> <span class="text-muted">昨天解决</span> <strong>0</strong></div>
                                                      <div class="progress">
                                                          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                                          </div>
                                                      </div>
                                                      <div class="type-info">
                                                          <div class="type-label">
                                                              <table class="status-count">
                                                                  <tbody><tr>
                                                                      <td class="text-right">所有 Bug :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td class="text-right">未解决 :</td>
                                                                      <td class="text-left">0</td>
                                                                  </tr>
                                                                  </tbody></table>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <script>
              config.ordersSaved = '排序已保存';
              config.confirmRemoveBlock = '确定移除区块吗？';
              var module   = 'my';
              var useGuest = false;
          </script>
          <script>/**
           * Delete block.
           *
           * @param  int    $index
           * @access public
           * @return void
           */
          function deleteBlock(index)
          {
              if(confirm(config.confirmRemoveBlock))
              {
                  $.getJSON(createLink('block', 'delete', 'index=' + index + '&module=' + module), function(data)
                  {
                      if(data.result != 'success')
                      {
                          alert(data.message);
                          return false;
                      }
                      else
                      {
                          window.location.reload(true);
                      }
                  });
              }
          }

          /**
           * Sort blocks.
           *
           * @param  array $orders  format is {'blockid' : 1, 'block1' : 2}
           * @param  function $callback
           * @access public
           * @return void
           */
          function sortBlocks(newOrders, callback)
          {
              $.getJSON(createLink('block', 'sort', 'orders=' + newOrders.join(',') + '&module=' + module), callback);
          }

          /**
           * Resize block
           * @param  string $blockId
           * @param  function $callback
           * @access public
           * @return void
           */
          function resizeBlock(blockID, width, callback)
          {
              $.getJSON(createLink('block', 'resize', 'id=' + blockID + '&type=horizontal&data=' + width), function(data)
              {
                  callback && callback();
                  refreshBlock($('#block' + blockID));
              });
          }

          function refreshBlock($panel, afterRefresh)
          {
              var url = $panel.data('url');
              $panel.addClass('load-indicator loading');
              $.ajax({url: url, dataType: 'html'}).done(function(data)
              {
                  var $data = $(data);
                  if($data.hasClass('panel')) $panel.empty().append($data.children());
                  else if($panel.find('#assigntomeBlock').length) $panel.find('#assigntomeBlock').empty().append($data.children());
                  else
                  {
                      $panel.children('.panel-move-handler,style,script').remove();
                      $panel.find('.panel-body,.empty-tip').replaceWith($data);
                  }
                  $panel.find('.progress-pie').progressPie();
                  if($.isFunction(afterRefresh))
                  {
                      afterRefresh.call(this,
                          {
                              result: true,
                              data: data,
                              $panel: $panel
                          });
                  }
                  $panel.find('.tablesorter').sortTable();
                  initTableHeader($panel);
              }).fail(function()
              {
                  $panel.addClass('panel-error');
                  if($.isFunction(afterRefresh))
                  {
                      afterRefresh.call(this,
                          {
                              result: false,
                              $panel: $panel
                          });
                  }
              }).always(function()
              {
                  $panel.removeClass('load-indicator loading');
              });
          }

          /**
           * Init table header
           * @access public
           * @return void
           */
          function initTableHeader($wrapper)
          {
              ($wrapper || $('#dashboard')).find('.panel-body > table.table-fixed-head').each(function()
              {
                  var $table = $(this);
                  var $tabPane = $table.closest('.tab-pane');
                  if ($tabPane.length && !$tabPane.hasClass('active'))
                  {
                      $('[data-tab][href="#' + $tabPane.attr('id') + '"]').one('shown.zui.tab', function()
                      {
                          initTableHeader($tabPane);
                      });
                      return;
                  }

                  var $panel = $tabPane.length ? $tabPane : $table.closest('.panel');

                  if(!$table.length || !$table.children('thead').length || ($panel.find('#assigntomeBlock').length && $panel.find('#assigntomeBlock > div').length > 1)) return;
                  var isFixed = $panel.find('.panel-body').height() < $table.outerHeight();

                  $panel.toggleClass('with-fixed-header', isFixed);
                  var $header = $panel.children('.table-header-fixed').toggle(isFixed);
                  if(!isFixed)
                  {
                      $table.find('thead').css('visibility', 'visible');
                      return;
                  }
                  var tableWidth = $table.width();
                  var $oldTableHead = $table.find('thead');
                  var updateTh = function()
                  {
                      $header.find('thead').empty().append($oldTableHead.find('tr').clone());
                  };
                  if(!$header.length)
                  {
                      $header = $('<div class="table-header-fixed" style="position: absolute; left: 10px; top: 0; right: 0; padding: 0 10px 0 0; background: #fff;"><table class="table table-fixed no-margin"></table></div>').css('right', $panel.width() - tableWidth - 20);
                      $oldTableHead.find('th').each(function(idx)
                      {
                          $(this).attr('data-idx', idx);
                      });
                      $header.find('.table').addClass($table.attr('class')).append($oldTableHead.css('visibility', 'hidden').clone().css('visibility', 'visible'));
                      $panel.addClass('with-fixed-header').append($header);
                      var $heading = $panel.children('.panel-heading');
                      if($heading.length) $header.css('top', $heading.outerHeight());
                      if($table.hasClass('tablesorter'))
                      {
                          $header.on('mousedown mouseup', 'th[data-idx]', function(e)
                          {
                              var $th = $(this);
                              $oldTableHead.find('th[data-idx="' + $th.data('idx') + '"]').trigger(e);
                              if(e.type === 'mouseup')
                              {
                                  setTimeout(updateTh, 10);
                                  setTimeout(updateTh, 200);
                              }
                          });
                      }
                  }
                  else
                  {
                      updateTh();
                  }

                  var timeoutCall = null;
                  $table.parent().off('scroll.initTableHeader').on('scroll.initTableHeader', function()
                  {
                      clearTimeout(timeoutCall);
                      var $tableContainer = $(this);
                      timeoutCall = setTimeout(function() {
                          $panel.toggleClass('table-scrolled', $tableContainer.scrollTop() > 0);
                      }, 200);
                  });
              });
          }

          /**
           * Check refresh progress
           * @param  object $dashboard
           * @access public
           * @return void
           */
          function checkRefreshProgress($dashboard, doneCallback)
          {
              if($dashboard.find('.panel-loading').length) setTimeout(function() {checkRefreshProgress($dashboard, doneCallback);}, 500);
              else doneCallback();
          }
          /**
           * Hidden block.
           *
           * @param  index $index
           * @access public
           * @return void
           */
          function hiddenBlock(index)
          {
              $.getJSON(createLink('block', 'delete', 'index=' + index + '&module=' + module + '&type=hidden'), function(data)
              {
                  if(data.result != 'success')
                  {
                      alert(data.message);
                      return false;
                  }

                  $('#dashboard #block' + index).addClass('hidden');
              })
          }

          $(function()
          {
              initTableHeader();
              $(window).on('resize', function()
              {
                  initTableHeader();
              });

              // Init dashboard
              $('#dashboard').sortable(
                  {
                      selector: '.panel',
                      trigger: '.panel-heading,.panel-move-handler',
                      containerSelector: '.col-main,.col-side',
                      start: function()
                      {
                          $('body').css('overflow', 'hidden');
                      },
                      finish: function(e)
                      {
                          $('body').css('overflow', 'auto');
                          var newOrders = [];
                          var isSideCol = e.element.parent().is('.col-side');
                          e.list.each(function(index, data)
                          {
                              newOrders.push(data.item.data('id'));
                          });
                          sortBlocks(newOrders, function()
                          {
                              resizeBlock(e.element.data('id'), isSideCol ? 4 : 8);
                          });

                          e.element.toggleClass('block-sm', isSideCol);
                      }
                  }).on('click', '.refresh-panel', function()
              {
                  refreshBlock($(this).closest('.panel'));
              });
          });



          </script>
          <script>

          </script>
      </div><script>$.initSidebar()</script>

      <iframe frameborder="0" name="hiddenwin" id="hiddenwin" scrolling="no" class="debugwin hidden"></iframe>

  </main>
  </body>
</html>
