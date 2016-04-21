<html>
<head>
    <meta charset="UTF-8">
    <style>
        @import url(http://fonts.googleapis.com/css?family=Fjalla+One);

        .banner {
            background: #63d5fd;
            font-family: 'Open Sans', sans-serif;
            text-align: center;
            position: relative;
            height: 60px;
            width: 310px;
            margin: 100px auto;
            font-family: 'Open Sans', sans-serif;
            font-weight: lighter;
            font-size: 25px;
            color: #fff;
        }

        .banner::before {
            content: "";
            position: absolute;
            top: -16px;
            right: 0;
            height: 60px;
            width: 90px;
            -ms-transform: skewY(20deg);
            -webkit-transform: skewY(20deg);
            transform: skewY(20deg);
            background: #4abce4;
        }

        .banner::after {
            content: "";
            position: absolute;
            top: -32px;
            right: 20px;
            height: 60px;
            width: 70px;
            background: #6ddfff;
        }

        .banner span {
            display: block;
            padding-top: 10px;
        }

        .banner span::before {
            content: "";
            position: absolute;
            top: 50px;
            right: 180px;
            height: 60px;
            width: 170px;
            background: #41b3db;
            z-index: -9;
        }

        .banner span::after {
            content: "";
            position: absolute;
            top: 60px;
            right: 180px;
            border-top: 0px solid transparent;
            border-bottom: 50px solid transparent;
            border-right: 130px solid #4abce4;
        }

        .box {
            position: relative;
            border-radius: 10px;
            width: 1000px;
            padding: 50px;
            margin: 0 auto;
            background-color: #fff;
            -webkit-box-shadow: 0 0 8px rgba(0, 0, 0, 0.2), inset 0 0 50px rgba(0, 0, 0, 0.15);
            -moz-box-shadow: 0 0 8px rgba(0, 0, 0, 0.2), inset 0 0 50px rgba(0, 0, 0, 0.1);
            box-shadow: 0 0 50px rgba(0, 0, 0, 0.4), inset 0 0 50px rgba(0, 0, 0, 0.1);
        }

        @import url(http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

        body {
            font-family: "Roboto", helvetica, arial, sans-serif;
            font-size: 16px;
            font-weight: 400;
            text-rendering: optimizeLegibility;
        }

        div.table-title {
            display: block;
            margin: auto;
            max-width: 600px;
            padding: 5px;
            width: 100%;
        }

        .table-title h3 {
            color: #81DAF5;
            font-size: 32px;
            font-weight: 400;
            font-style: normal;
            font-family: "Roboto", helvetica, arial, sans-serif;
            text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
            text-transform: uppercase;
        }

        /*** Table Styles **/

        .table-fill {
            background: white;
            border-radius: 3px;
            border-collapse: collapse;
            height: 320px;
            margin: auto;
            max-width: 600px;
            padding: 5px;
            width: 100%;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            animation: float 5s infinite;
        }

        th {
            color: #D5DDE5;;
            background: #1b1e24;
            border-bottom: 4px solid #9ea7af;
            border-right: 1px solid #343a45;
            font-size: 23px;
            font-weight: 100;
            padding: 24px;
            text-align: left;
            text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
            vertical-align: middle;
        }

        th:first-child {
            border-top-left-radius: 3px;
        }

        th:last-child {
            border-top-right-radius: 3px;
            border-right: none;
        }

        tr {
            border-top: 1px solid #C1C3D1;
            border-bottom-: 1px solid #C1C3D1;
            color: #666B85;
            font-size: 16px;
            font-weight: normal;
            text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
        }

        tr:hover td {
            background: #4E5066;
            color: #FFFFFF;
            border-top: 1px solid #22262e;
            border-bottom: 1px solid #22262e;
        }

        tr:first-child {
            border-top: none;
        }

        tr:last-child {
            border-bottom: none;
        }

        tr:nth-child(odd) td {
            background: #EBEBEB;
        }

        tr:nth-child(odd):hover td {
            background: #4E5066;
        }

        tr:last-child td:first-child {
            border-bottom-left-radius: 3px;
        }

        tr:last-child td:last-child {
            border-bottom-right-radius: 3px;
        }

        td {
            background: #FFFFFF;
            padding: 20px;
            text-align: left;
            vertical-align: middle;
            font-weight: 300;
            font-size: 18px;
            text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
            border-right: 1px solid #C1C3D1;
        }

        td:last-child {
            border-right: 0px;
        }

        th.text-left {
            text-align: left;
        }

        th.text-center {
            text-align: center;
        }

        th.text-right {
            text-align: right;
        }

        td.text-left {
            text-align: left;
        }

        td.text-center {
            text-align: center;
        }

        td.text-right {
            text-align: right;
        }

        a {
            color: blue;
            font: bold 3em/1.5 'Fjalla One', sans-serif;
            text-decoration: none;
            text-transform: uppercase;
            -webkit-transition: .2s;
        }

        a:hover {
            color: hotPink;
        }

        @media (-webkit-min-device-pixel-ratio: 0) {
            a {
                background-color: skyBlue;
                background-image: -webkit-linear-gradient(left, hotPink 0%, orange 50%, transparent 50%);
                background-position: 100% 0;
                background-size: 200% 200%;
                color: transparent;
                -webkit-transition: .1s .2s;
                -webkit-background-clip: text;
            }

            a:hover {
                background-position: 0 0;
                color: transparent;
                transition: .2s;
            }
        }
    </style>
    <script>

    </script>
    <title>Sayfa 4</title>
</head>
<body bgcolor="#81F781">
<div class="banner">
    <span>Banner</span>
</div>
<div class="box">
    <div class="table-title">
        <h3>Liste</h3>
    </div>
    <table class="table-fill">
        <thead>
        <tr>
            <th class="text-left">Yazan</th>
            <th class="text-left">Mesaj</th>
        </tr>
        </thead>
        <tbody class="table-hover">
        <%
        dim Conn,RecordSet
        dim Sql,Ad,Mail,Neden,Mesaj
        Ad = Request.Form("ad")
        Mail = Request.Form("mail")
        Neden = Request.Form("neden")
        Mesaj = Request.Form("mesaj")
        set Conn = server.createobject("Adodb.Connection")
        Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("db.mdb")
        set RecordSet = server.createobject("Adodb.RecordSet")
        Sql = "SELECT * FROM iletisim"
        RecordSet.open Sql, Conn, AdOpenStatic
        Do While Not RecordSet.EOF
        Response.Write "<Tr><Td class=text-left>" & RecordSet("ad") &"</Td><Td class=text-left>" & RecordSet("mesaj") & "</Td></Tr>"
        RecordSet.MoveNext
        Loop
        Conn.close
        %>
        </tbody>
    </table>
	<br/>
    <table class="table-fill">
        <thead>
        <tr>
            <th class="text-left" colspan=2>Duyurular</th>
        </tr>
        </thead>
        <tbody class="table-hover">
		<Tr>
		<Td class=text-left>
		<Marquee direction="up" height="200">
		<%
			Dim Oku,Dosya
			Set Dosya = Server.CreateObject("Scripting.FileSystemObject") 
			Set Oku = dosya.OpenTextFile(Server.MapPath("duyuru.txt"), 1) 
			Do Until Oku.AtEndOfStream 
				Response.Write Oku.ReadLine & "<br>"
			Loop
		%>
		</Marquee>
		</Td>
		</Tr>
		</tbody>
    </table>
	<br/>
    <br/>
    <a href="index.html" style="float: right;bottom: 0;">ANASAYFA</a>
    <a href="3.asp" style="float: left;bottom: 0;">GERİ</a>
    <br/>
    <br/>

</div>

</body>
</html>