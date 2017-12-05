<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
Copyright 2004-2014 H2 Group. Multiple-Licensed under the MPL 2.0,
and the EPL 1.0 (http://h2database.com/html/license.html).
Initial Developer: H2 Group
-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>${text.a.title}</title>
<link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body bgcolor="#FF00FF" class="toolbar">
    <form name="header" method="post" action="header.jsp?jsessionid=${sessionId}">
        <table class="toolbar" cellspacing="0" cellpadding="0">
            <tr class="toolbar">
                <td class="toolbar">
                    <div style="color: blue; font-weight: bold; margin: 0px 5px;" id="settingName">${setting}</div>
                </td>
                <td class="toolbar">
                    <img src="icon_line.gif" class="iconLine" alt=""/>
                    <a href="index.jsp" target="_blank">
                        <img src="icon_new_window.png"
                             onmouseover="this.className ='icon_hover'"
                             onmouseout="this.className ='icon'"
                             class="icon" alt="${text.a.newConnection}"
                             title="${text.a.newConnection}" border="1"/>
                    </a>
                </td>
                <td class="toolbar">
                    <a href="logout.do?jsessionid=${sessionId}" target="_parent">
                        <img src="icon_disconnect.gif"
                            onmouseover="this.className ='icon_hover'"
                            onmouseout="this.className ='icon'"
                            class="icon" alt="${text.toolbar.disconnect}"
                            title="${text.toolbar.disconnect}" border="1"/>
                    </a>
                    <img src="icon_line.gif" class="iconLine" alt=""/>
                    <a href="tables.do?jsessionid=${sessionId}" target="h2menu">
                        <img src="icon_refresh.gif"
                            onmouseover="this.className ='icon_hover'"
                            onmouseout="this.className ='icon'"
                            class="icon" alt="${text.toolbar.refresh}"
                            title="${text.toolbar.refresh}" border="1"/>
                    </a>
                    <img src="icon_line.gif" class="iconLine" alt=""/>
                </td>
                <td class="toolbar">
                    <input type="checkbox" name="autoCommit" value="autoCommit" onclick=
                        "javascript:parent.h2result.document.location='query.do?jsessionid=${sessionId}&amp;sql=@autocommit_' + (document.header.autoCommit.checked ? 'true' : 'false') + '.';"/>
                </td>
                <td class="toolbar">
                    ${text.toolbar.autoCommit}&nbsp;
                </td>
                <td class="toolbar">
                    <a href="query.do?jsessionid=${sessionId}&amp;sql=ROLLBACK" target="h2result">
                        <img src="icon_rollback.gif"
                            onmouseover="this.className ='icon_hover'"
                            onmouseout="this.className ='icon'"
                            class="icon" alt="${text.toolbar.rollback}"
                            title="${text.toolbar.rollback}" border="1"/>
                    </a>
                    <a href="query.do?jsessionid=${sessionId}&amp;sql=COMMIT" target="h2result">
                        <img src="icon_commit.gif"
                            onmouseover="this.className ='icon_hover'"
                            onmouseout="this.className ='icon'"
                            class="icon" alt="${text.toolbar.commit}"
                            title="${text.toolbar.commit}" border="1"/>
                    </a>
                    <img src="icon_line.gif" class="iconLine" alt=""/>
                </td>
                <td class="toolbar">
                    &nbsp;${text.toolbar.maxRows}:&nbsp;
                </td>
                <td class="toolbar">
                    <select name="rowcount" size="1" onchange=
                    "javascript:parent.h2result.document.location='query.do?jsessionid=${sessionId}&amp;sql=@maxrows+'+header.rowcount.value+'.';">
                    <option value="0">
                            ${text.toolbar.all}
                        </option>
                        <option value="10000">
                            10000
                        </option>
                        <option selected="selected" value="1000">
                            1000
                        </option>
                        <option value="500">
                            500
                        </option>
                        <option value="300">
                            300
                        </option>
                        <option value="100">
                            100
                        </option>
                        <option value="10">
                            10
                        </option>
                    </select>&nbsp;
                </td>
                <td class="toolbar">
                    <a href="javascript:parent.h2query.submitAll();">
                        <img src="icon_run.gif"
                            onmouseover="this.className ='icon_hover'"
                            onmouseout="this.className ='icon'"
                            class="icon" alt="${text.toolbar.run}"
                            title="${text.toolbar.run}" border="1"/>
                    </a>
                </td>
                <td class="toolbar">
                    <a href="javascript:parent.h2query.submitSelected();">
                        <img src="icon_run_selected.gif"
                            onmouseover="this.className ='icon_hover'"
                            onmouseout="this.className ='icon'"
                            class="icon" alt="${text.toolbar.runSelected}"
                            title="${text.toolbar.runSelected}" border="1"/>
                    </a>
                </td>
                <td class="toolbar">
                    <a href="query.do?jsessionid=${sessionId}&amp;sql=@cancel." target="h2result">
                        <img src="icon_stop.gif"
                            onmouseover="this.className ='icon_hover'"
                            onmouseout="this.className ='icon'"
                            class="icon" alt="${text.toolbar.cancelStatement}"
                            title="${text.toolbar.cancelStatement}" border="1"/>
                    </a>
                    <img src="icon_line.gif" class="iconLine" alt=""/>
                    <a href="query.do?jsessionid=${sessionId}&amp;sql=@history." target="h2result">
                        <img src="icon_history.gif"
                            onmouseover="this.className ='icon_hover'"
                            onmouseout="this.className ='icon'"
                            class="icon" alt="${text.toolbar.history}"
                            title="${text.toolbar.history}" border="1"/>
                    </a>
                    <img src="icon_line.gif" class="iconLine" alt=""/>
                </td>
                <td class="toolbar">
                    ${text.toolbar.autoComplete}&nbsp;
                    <select name="autoComplete" size="1"
                        onchange="javascript:parent.h2query.setAutoComplete(this.value)">
                        <option selected="selected" value="0">
                            ${text.toolbar.autoComplete.off}
                        </option>
                        <option value="1">
                            ${text.toolbar.autoComplete.normal}
                        </option>
                        <option value="2">
                            ${text.toolbar.autoComplete.full}
                        </option>
                    </select>&nbsp;
                </td>
                <td class="toolbar">
                    ${text.toolbar.autoSelect}&nbsp;
                    <select name="autoSelect" size="1"
                        onchange="javascript:parent.h2query.setAutoSelect(this.value)">
                        <option value="0">
                            ${text.toolbar.autoSelect.off}
                        </option>
                        <option selected="selected" value="1">
                            ${text.toolbar.autoSelect.on}
                        </option>
                    </select>
                </td>
                <td class="toolbar">
                    <img src="icon_options.png"
                         onmouseover="this.className ='icon_hover'"
                         onmouseout="this.className ='icon'"
                         onclick="showOptions(this)"
                         class="icon" alt="${text.toolbar.options}"
                         title="${text.toolbar.options}" border="1"/>
                </td>
                <td class="toolbar">
                    <a href="help.jsp?jsessionid=${sessionId}" target="h2result">
                        <img src="icon_help.gif"
                             onmouseover="this.className ='icon_hover'"
                             onmouseout="this.className ='icon'"
                             class="icon" alt="${text.a.help}"
                             title="${text.a.help}" border="1"/>
                    </a>
                </td>
            </tr>
        </table>
        <div id="limbo" style="position:absolute; top:0px; left:0px; display:none; z-index: 0;">
            <div id="options" style="border: solid 1px black;">
                <img src="ico_remove.gif" style='position:absolute; top:5px; right:5px; cursor:pointer;'/>
                <table class="login" cellspacing="0" cellpadding="0">
                    <tr class="login">
                        <th class="login" colspan="2">${text.toolbar.options}</th>
                    </tr>
                    <tr>
                        <td class="toolbar">
                            <input type="checkbox" name="echosql" />
                        </td>
                        <td class="toolbar">
                            ${text.toolbar.echosql}&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="toolbar">
                            <input type="checkbox" name="autoReconnect" />
                        </td>
                        <td class="toolbar">
                            ${text.toolbar.autoReconnect}&nbsp;
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
<script type="text/javascript">
<!--
    document.header.autoCommit.checked = '${autoCommit}' != '';
    document.header.autoReconnect.checked = '${autoReconnect}' == 'on';
    document.header.echosql.checked = '${echosql}' == 'on';
    document.header.rowcount.value = ${maxrows};

    function showOptions(el) {
        if (!window.parent.document.getElementById('dropdown')) {
            var op = document.getElementById('options');
            var d1 = document.createElement('div');
            d1.id = 'dropdown';
            d1.appendChild(op);
            window.parent.document.children[0].appendChild(d1); // due to frames
            d1.style.position = 'absolute';
            d1.style.top = el.offsetTop + el.offsetHeight + 'px';
            d1.style.left = el.parentElement.offsetLeft - op.offsetWidth + 'px';
            d1.style.zIndex = 9999;
            d1.style.overflow = 'overlay';
            el.previousBorder = el.style.border;
            el.style.border = 'inset 1px #aca899';
            op.caller = el;
            op.children[0].onclick = closeOptions;
        }
    }

    function closeOptions(e) {
        var target = e.target.parentElement; // options is parent of close button
        var parent = target.parentElement;
        document.getElementById('limbo').appendChild(target);
        parent.remove();
        target.caller.style.border = target.caller.previousBorder;
    }

    function toggle() {
        parent.h2result.document.location='query.do?jsessionid=${sessionId}&sql=@' + this.name + ' ' + (this.checked ? 'on' : 'off') + '.';
    }

    document.header.autoReconnect.onclick = toggle;
    document.header.echosql.onclick = toggle;
//-->
</script>
</body>
</html>
