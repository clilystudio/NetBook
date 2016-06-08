package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class RecommendUgcRoot {
    private RecommendUgcRoot.RecommendUGC[] booklists;
    private boolean ok;

    public RecommendUgcRoot.RecommendUGC[] getBooklists() {
        return this.booklists;
    }

    public void setBooklists(RecommendUgcRoot.RecommendUGC[] paramArrayOfRecommendUGC) {
        this.booklists = paramArrayOfRecommendUGC;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class RecommendUGC {
        private String author;
        private int bookCount;
        private int collectorCount;
        private String cover;
        private String desc;
        private String id;
        private String title;

        public String getAuthor() {
            return this.author;
        }

        public void setAuthor(String paramString) {
            this.author = paramString;
        }

        public int getBookCount() {
            return this.bookCount;
        }

        public void setBookCount(int paramInt) {
            this.bookCount = paramInt;
        }

        public int getCollectorCount() {
            return this.collectorCount;
        }

        public void setCollectorCount(int paramInt) {
            this.collectorCount = paramInt;
        }

        public String getCover() {
            return this.cover;
        }

        public void setCover(String paramString) {
            this.cover = paramString;
        }

        public String getDesc() {
            return this.desc;
        }

        public void setDesc(String paramString) {
            this.desc = paramString;
        }

        public String getFullCover() {
            return ApiService.a + this.cover + "-covers";
        }

        public String getId() {
            return this.id;
        }

        public void setId(String paramString) {
            this.id = paramString;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String paramString) {
            this.title = paramString;
        }
    }
}

