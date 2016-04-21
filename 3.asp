<html>
<head>
    <meta charset="UTF-8">
    <style>
        @import url(http://fonts.googleapis.com/css?family=Fjalla+One);

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

        .hit-the-floor {
            color: #8258FA;
            font-size: 32px;
            font-weight: bold;
            font-family: Helvetica;
            text-shadow: 0 1px 0 #ccc, 0 2px 0 #c9c9c9, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0, 0, 0, .1), 0 0 5px rgba(0, 0, 0, .1), 0 1px 3px rgba(0, 0, 0, .3), 0 3px 5px rgba(0, 0, 0, .2), 0 5px 10px rgba(0, 0, 0, .25), 0 10px 10px rgba(0, 0, 0, .2), 0 20px 20px rgba(0, 0, 0, .15);
        }
        .baslik {
                    color: #8258FA;
                    font-size: 32px;
                    font-weight: bold;
                    font-family: Helvetica;
                    text-shadow: 0 1px 0 #ccc, 0 2px 0 #c9c9c9, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0, 0, 0, .1), 0 0 5px rgba(0, 0, 0, .1), 0 1px 3px rgba(0, 0, 0, .3), 0 3px 5px rgba(0, 0, 0, .2), 0 5px 10px rgba(0, 0, 0, .25), 0 10px 10px rgba(0, 0, 0, .2), 0 20px 20px rgba(0, 0, 0, .15);
                }

        .hit-the-floor {
            text-align: center;
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
    <title>İletişim Formu</title>
</head>
<body bgcolor="#81F781">

<div class="box">
    <Form method="post">
        <h1 class="baslik">İletişim Formu</h1>
        <Table>
            <tr>
                <td>Adınız :</td>
                <td><input type="text" name="ad"/></td>
            </tr>
            <tr>
                <td>Mailiniz :</td>
                <td><input type="text" name="mail"/></td>
            </tr>
            <tr>
                <td>Nedeniniz :</td>
                <td>
                    <Select name="neden">
                        <Option selected>Şikayet</Option>
                        <Option>Tebrik</Option>
                        <Option>Öneri</Option>
                        <Option>İstek</Option>
                    </Select>
                </td>
            </tr>
            <tr>
                <td colspan="2">Mesajınız:</td>
            </tr>
            <tr>
                <td colspan="2"><textarea name="mesaj" rows="8" cols="34"></textarea></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="gonder" value="GÖNDER"/></td>
            </tr>
        </Table>
    </Form>
    <br/>
    <%
        if Request("ad").Count then
            dim Conn,RecordSet
    		dim Sql,Ad,Mail,Neden,Mesaj
    		Ad = Request.Form("ad")
    		Mail = Request.Form("mail")
    		Neden = Request.Form("neden")
    		Mesaj = Request.Form("mesaj")
    		set Conn = server.createobject("Adodb.Connection")
    		Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("db.mdb")
    		set RecordSet = server.createobject("Adodb.RecordSet")
    		Sql = "INSERT INTO iletisim (ad,mail,neden,mesaj) VALUES('" & Ad & "','" & Mail &"','" & Neden &"','" & Mesaj &"')"
    		RecordSet.open Sql, Conn, AdOpenStatic
    		Response.Write "<div class=hit-the-floor>Sayın " & Ad & "<br>" & Neden & " Mesajınız Kaydedilmiştir.</div>"
    		Conn.close
        end if

    %>
    <br/>
    <a href="4.asp" style="float: right;bottom: 0;">İLERİ</a>
    <a href="2.html" style="float: left;bottom: 0;">GERİ</a>
    <br/>
    <br/>

</div>

</body>
</html>