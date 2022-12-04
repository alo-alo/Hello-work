using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLBH_nhom7
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            busSP = new BusSanPham();
            InitializeComponent();
        }
        #region MyRegion
        BusSanPham busSP;
        int maSP;
        #endregion

        private void Form1_Load(object sender, EventArgs e)
        {
            gvSanPham.DataSource = busSP.LayDSSP();
            busSP.LayDSLoaiSP(cbLoaiSP);
            busSP.LayDSNhaCC(cbNCC);
        }
        //private DataTable LayDSSP()
        //{
        //    DataTable dt = new DataTable();
        //    string query = "Select * from Products";
        //    SqlDataAdapter da = new SqlDataAdapter(query, conn);
        //    da.Fill(dt);
        //    return dt;
        //}
        //private DataTable LayLoaiSP()
        //{
        //    DataTable dt = new DataTable();
        //    string query = "Select CategoryID, CategoryName from Categories";
        //    SqlDataAdapter da = new SqlDataAdapter(query, conn);
        //    da.Fill(dt);
        //    return dt;
        //}
        //private DataTable LayNhaCungCap()
        //{
        //    DataTable dt = new DataTable();
        //    string query = "Select SupplierID, CompanyName from Suppliers";
        //    SqlDataAdapter da = new SqlDataAdapter(query, conn);
        //    da.Fill(dt);
        //    return dt;
        //}

        //public int ThemSanPhamMoi(string ten, decimal gia, int sl, int maLSP, int maNCC)
        //{
        //    int result = -1;
        //    int gt = 0;
        //    string query = String.Format("Insert into Products(ProductName, UnitPrice, UnitsInStock, CategoryID, SupplierID) values(N'{0}', {1}, {2}, {3}, {4})", ten, gia, sl, maLSP, maNCC);
        //    SqlCommand cmd = new SqlCommand(query, conn);
        //    try
        //    {
        //        conn.Open();
        //        gt = cmd.ExecuteNonQuery();
        //        if (gt == 0)
        //            result = 0;
        //        else
        //            result = 1;

        //    }
        //    catch (SqlException)
        //    {

        //        result = -1;
        //    }
        //    finally
        //    {
        //        conn.Close();

        //    }
        //    return result;
        //}

        private void btThem_Click(object sender, EventArgs e)
        {
            try
            {
                Products p = new Products();
                p.ProductName = txtTenSP.Text;
                p.UnitPrice = double.Parse(txtDonGia.Text);
                p.UnitInStock = int.Parse(txtSoLuong.Text);
                p.SupplerID = int.Parse(cbNCC.SelectedValue.ToString());
                p.CategoryID = int.Parse(cbLoaiSP.SelectedValue.ToString());
                if (busSP.ThemSP(p))
                {
                    MessageBox.Show("Thêm thành công");
                    gvSanPham.DataSource = busSP.LayDSSP();
                }
                else
                    MessageBox.Show("Thêm thất bại");
            }
            catch (Exception)
            {

                MessageBox.Show("Nhập sai sản phẩm");
            }
        }

        private void gvSanPham_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex > 0 && e.RowIndex < gvSanPham.Rows.Count)
            {
                maSP = int.Parse(gvSanPham.Rows[e.RowIndex].Cells["ProductID"].Value.ToString());
                txtTenSP.Text = gvSanPham.Rows[e.RowIndex].Cells["ProductName"].Value.ToString();
                txtSoLuong.Text = gvSanPham.Rows[e.RowIndex].Cells["UnitsInstock"].Value.ToString();
                txtDonGia.Text = gvSanPham.Rows[e.RowIndex].Cells["UnitPrice"].Value.ToString();
                cbLoaiSP.SelectedValue = gvSanPham.Rows[e.RowIndex].Cells["CategoryID"].Value.ToString();
                cbNCC.SelectedValue = gvSanPham.Rows[e.RowIndex].Cells["SupplierID"].Value.ToString();
            }
        }

        private void btSua_Click(object sender, EventArgs e)
        {
            Products p = new Products();
            p.ProductID = maSP;
            p.ProductName = txtTenSP.Text;
            p.UnitInStock = int.Parse(txtSoLuong.Text);
            p.UnitPrice = double.Parse(txtDonGia.Text);
            p.CategoryID = int.Parse(cbLoaiSP.SelectedValue.ToString());
            p.SupplerID = int.Parse(cbNCC.SelectedValue.ToString());

            if (p == null)
                MessageBox.Show("Sản phẩm không tồn tại");
            else
            {
                if (busSP.UpdateProduct(p))
                {
                    gvSanPham.DataSource = busSP.LayDSSP();
                    MessageBox.Show("Sửa thành công");
                }
                else MessageBox.Show("Sửa thất bại");
            }
        }

        private void btThoat_Click(object sender, EventArgs e)
        {
            Application.Exit();

        }
    }
}
