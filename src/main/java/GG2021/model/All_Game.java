package GG2021.model;

import java.util.Date;

public class All_Game {
	private String G_NAME;
	private String G_TYPE;
	private String G_IMG;
	private String G_CORPORATE_NAME;
	private String G_GAME_INTRODUCTION;
	private String G_PRICE;
	private int G_GRADE;
	private String G_URL;
	private Date G_DATE;

	public String getG_NAME() {
		return G_NAME;
	}

	public void setG_NAME(String g_NAME) {
		G_NAME = g_NAME;
	}

	public String getG_TYPE() {
		return G_TYPE;
	}

	public void setG_TYPE(String g_TYPE) {
		G_TYPE = g_TYPE;
	}

	public String getG_IMG() {
		return G_IMG;
	}

	public void setG_IMG(String g_IMG) {
		G_IMG = g_IMG;
	}

	public String getG_CORPORATE_NAME() {
		return G_CORPORATE_NAME;
	}

	public void setG_CORPORATE_NAME(String g_CORPORATE_NAME) {
		G_CORPORATE_NAME = g_CORPORATE_NAME;
	}

	public String getG_GAME_INTRODUCTION() {
		return G_GAME_INTRODUCTION;
	}

	public void setG_GAME_INTRODUCTION(String g_GAME_INTRODUCTION) {
		G_GAME_INTRODUCTION = g_GAME_INTRODUCTION;
	}

	public String getG_PRICE() {
		return G_PRICE;
	}

	public void setG_PRICE(String g_PRICE) {
		G_PRICE = g_PRICE;
	}

	public int getG_GRADE() {
		return G_GRADE;
	}

	public void setG_GRADE(int g_GRADE) {
		G_GRADE = g_GRADE;
	}

	public String getG_URL() {
		return G_URL;
	}

	public void setG_URL(String g_URL) {
		G_URL = g_URL;
	}

	public Date getG_DATE() {
		return G_DATE;
	}

	public void setG_DATE(Date g_DATE) {
		G_DATE = g_DATE;
	}

	private int startRow;
	private int endRow;

	private String search;
	private String keyword;

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
}
