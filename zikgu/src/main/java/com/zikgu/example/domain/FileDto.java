package com.zikgu.example.domain;

public class FileDto {
	private int file_num;
	private String o_name;
	public String file_name;
	private long file_size;
	private int article_num;
	private int f_group;
	private String file_path;
	private int f_id;
	private int c_id;
	private int c_file_id;
	private int tf_file_id;
	private int filecount;
	private String tf_certificatetitle;
	
	
	public int getfile_num() {
		return file_num;
	}
	public void setfile_num(int file_num) {
		this.file_num = file_num;
	}
	public String geto_name() {
		return o_name;
	}
	public void seto_name(String o_name) {
		this.o_name = o_name;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public long getFile_size() {
		return file_size;
	}
	public void setFile_size(long file_size) {
		this.file_size = file_size;
	}
	public int getArticle_num() {
		return article_num;
	}
	public void setArticle_num(int article_num) {
		this.article_num = article_num;
	}
	public int getf_group() {
		return f_group;
	}
	public void setf_group(int f_group) {
		this.f_group = f_group;
	}
	public String getfile_path() {
		return file_path;
	}
	public void setfile_path(String file_path) {
		this.file_path = file_path;
	}
	public int getf_id() {
		return f_id;
	}
	public void setf_id(int f_id) {
		this.f_id = f_id;
	}
	public int getC_file_id() {
		return c_file_id;
	}
	public void setC_file_id(int c_file_id) {
		this.c_file_id = c_file_id;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public int getTf_file_id() {
		return tf_file_id;
	}
	public void setTf_file_id(int tf_file_id) {
		this.tf_file_id = tf_file_id;
	}
	public int getFilecount() {
		return filecount;
	}
	public void setFilecount(int filecount) {
		this.filecount = filecount;
	}
	public String getTf_certificatetitle() {
		return tf_certificatetitle;
	}
	public void setTf_certificatetitle(String tf_certificatetitle) {
		this.tf_certificatetitle = tf_certificatetitle;
	}

}