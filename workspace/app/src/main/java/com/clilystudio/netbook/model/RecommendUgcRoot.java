package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class RecommendUgcRoot {
    private RecommendUGC[] booklists;
    private boolean ok;

    public RecommendUGC[] getBooklists() {
        return this.booklists;
    }

    public void setBooklists(RecommendUGC[] recommendUGCs) {
        this.booklists = recommendUGCs;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
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

        public void setAuthor(String string) {
            this.author = string;
        }

        public int getBookCount() {
            return this.bookCount;
        }

        public void setBookCount(int n) {
            this.bookCount = n;
        }

        public int getCollectorCount() {
            return this.collectorCount;
        }

        public void setCollectorCount(int n) {
            this.collectorCount = n;
        }

        public String getCover() {
            return this.cover;
        }

        public void setCover(String string) {
            this.cover = string;
        }

        public String getDesc() {
            return this.desc;
        }

        public void setDesc(String string) {
            this.desc = string;
        }

        public String getFullCover() {
            return ApiService.a + this.cover + "-covers";
        }

        public String getId() {
            return this.id;
        }

        public void setId(String string) {
            this.id = string;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String string) {
            this.title = string;
        }
    }
}
