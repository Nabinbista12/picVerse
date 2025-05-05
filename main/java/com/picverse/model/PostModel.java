package com.picverse.model;

public class PostModel {
  private int id;
  private String caption;
  private String image;
  
  public PostModel() {
	super();
  }

  public PostModel(int id, String caption, String image) {
    super();
    this.id = id;
    this.caption = caption;
    this.image = image;
  }

  public PostModel(String caption, String image) {
    super();
    this.caption = caption;
    this.image = image;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getCaption() {
    return caption;
  }

  public void setCaption(String caption) {
    this.caption = caption;
  }

  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }
}
