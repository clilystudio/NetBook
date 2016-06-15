package com.clilystudio.netbook.model;

import java.util.List;

public class GameLayoutRoot extends Root {
    private List<ModuleLayout> layout;
    private Game promotion;
    private Game[] promotions;

    public List<ModuleLayout> getLayout() {
        return this.layout;
    }

    public void setLayout(List<ModuleLayout> list) {
        this.layout = list;
    }

    public Game getPromotion() {
        return this.promotion;
    }

    public void setPromotion(Game game) {
        this.promotion = game;
    }

    public Game[] getPromotions() {
        return this.promotions;
    }

    public void setPromotions(Game[] arrgame) {
        this.promotions = arrgame;
    }

    public class GameLayoutRoot$ModuleLayout {
        private ActivityItem activity;
        private GameGroupItem gameGroup;
        private String id;
        private String module;
        private String title;

        public ActivityItem getActivity() {
            return this.activity;
        }

        public GameGroupItem getGameGroup() {
            return this.gameGroup;
        }

        public void setGameGroup(GameGroupItem gameGroupItem) {
            this.gameGroup = gameGroupItem;
        }

        public String getId() {
            return this.id;
        }

        public void setId(String string) {
            this.id = string;
        }

        public String getModule() {
            return this.module;
        }

        public void setModule(String string) {
            this.module = string;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String string) {
            this.title = string;
        }

        public ModuleType getType() {
            for (ModuleType moduleType : ModuleType.values()) {
                if (!moduleType.getName().equals(this.module)) continue;
                return moduleType;
            }
            throw new RuntimeException("module " + this.module + " not valid");
        }

        public class GameLayoutRoot$ModuleLayout$ActivityItem {
            private String bannerImage;
            private String link;

            public String getBannerImage() {
                return this.bannerImage;
            }

            public void setBannerImage(String string) {
                this.bannerImage = string;
            }

            public String getLink() {
                return this.link;
            }

            public void setLink(String string) {
                this.link = string;
            }
        }
    }
}
