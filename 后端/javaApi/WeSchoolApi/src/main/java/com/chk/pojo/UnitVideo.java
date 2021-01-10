package com.chk.pojo;
import org.springframework.stereotype.Component;

@Component("UnitVideo")
public class UnitVideo {
    Integer id;
    PreviewVideo previewVideo;
    ReviewVideo reviewVideo;
    String describe;

    public UnitVideo() {
    }

    public UnitVideo(Integer id, PreviewVideo previewVideo, ReviewVideo reviewVideo, String describe) {
        this.id = id;
        this.previewVideo = previewVideo;
        this.reviewVideo = reviewVideo;
        this.describe = describe;
    }

    public UnitVideo(PreviewVideo previewVideo, ReviewVideo reviewVideo, String describe) {
        this.previewVideo = previewVideo;
        this.reviewVideo = reviewVideo;
        this.describe = describe;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public PreviewVideo getPreviewVideo() {
        return previewVideo;
    }

    public void setPreviewVideo(PreviewVideo previewVideo) {
        this.previewVideo = previewVideo;
    }

    public ReviewVideo getReviewVideo() {
        return reviewVideo;
    }

    public void setReviewVideo(ReviewVideo reviewVideo) {
        this.reviewVideo = reviewVideo;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return "UnitVideo{" +
                "id=" + id +
                ", previewVideo=" + previewVideo +
                ", reviewVideo=" + reviewVideo +
                ", describe='" + describe + '\'' +
                '}'+"\n";
    }
}
