package com.skilldistillery.jpacrud.options;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Options {
	private static List<String> expressionList;
	private static List<String> colorList;

	static {
		colorList = new ArrayList<>();
		try (BufferedReader br = new BufferedReader(new FileReader(
				"src" + File.separator + "main" + File.separator + "resources" + File.separator + "colors.txt"))) {
			String line;
			while ((line = br.readLine()) != null) {
				colorList.add(line);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	static {
		expressionList = new ArrayList<>();
		expressionList.add("smile");
		expressionList.add("sad");
		expressionList.add("neutral");
	}
	public static List<String> getExpressionList() {
		return expressionList;
	}
	public static void setExpressionList(List<String> expressionList) {
		Options.expressionList = expressionList;
	}
	public static List<String> getColorList() {
		return colorList;
	}
	public static void setColorList(List<String> colorList) {
		Options.colorList = colorList;
	}

}
