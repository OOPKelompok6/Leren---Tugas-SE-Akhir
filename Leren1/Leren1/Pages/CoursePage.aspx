<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/LoggedIn.Master" AutoEventWireup="true" CodeBehind="CoursePage.aspx.cs" Inherits="Leren1.Pages.CoursePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Styles/CourseStyle.css" rel="stylesheet" />
    <div class="card-container">
        <div class="card_progress">
            <img src="../../Assets/Picture/Course1.png" alt="Trigonometri" />
            <div class="card_text">
                <h3>Trigonometri</h3>
                <p>Trigonometri adalah cabang ilmu matematika yang mendalami hubungan antara sudut dan panjang sisi dalam segitiga. Dalam trigonometri, terdapat tiga fungsi dasar yang sangat penting: sinus (sin), kosinus (cos), dan tangen (tan). Ketiga fungsi ini digunakan untuk menghubungkan sudut dalam segitiga dengan panjang sisi-sisinya.</p>
                <div class="button-container">
                    <asp:Button ID="Button1" runat="server" Text="Next >>" CssClass="custom-button" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        <div class="card_progress">
            <img src="../../Assets/Picture/Course2.jpeg" alt="Calculus" />
            <div class="card_text">
                <h3>Calculus</h3>
                <p>Calculus adalah cabang matematika yang sangat penting karena memungkinkan kita untuk memahami dan menganalisis perubahan serta gerak kontinu dalam berbagai fenomena alam dan ilmu pengetahuan lainnya. Dua konsep utamanya, diferensiasi dan integrasi, adalah dasar dari kalkulus dan memiliki aplikasi yang luas.</p>
                <div class="button-container">
                    <asp:Button ID="Button2" runat="server" Text="Next >>" CssClass="custom-button" />
                </div>
            </div>
        </div>
        <div class="card_progress">
            <img src="../../Assets/Picture/Course3.jpeg" alt="Aljabar Linear" />
            <div class="card_text">
                <h3>Aljabar Linear</h3>
                <p>Aljabar linear adalah cabang matematika yang mempelajari ruang vektor dan transformasi linear antara ruang-ruang tersebut. Ini mencakup konsep seperti matriks, determinan, sistem persamaan linear.</p>
                <div class="button-container">
                    <asp:Button ID="Button3" runat="server" Text="Next >>" CssClass="custom-button" />
                </div>
            </div>
        </div>
        <div class="card_progress">
            <img src="../../Assets/Picture/Course4.jpeg" alt="Geometry" />
            <div class="card_text">
                <h3>Geometry</h3>
                <p>Geometri adalah cabang matematika yang mempelajari sifat-sifat ruang, bentuk, ukuran, dan hubungan antara objek geometris. Ini mencakup topik seperti titik, garis, bidang, poligon, lingkaran, dan bentuk-bentuk tiga dimensi.</p>
                <div class="button-container">
                    <asp:Button ID="Button4" runat="server" Text="Next >>" CssClass="custom-button" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
