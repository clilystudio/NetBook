package com.clilystudio.netbook.model;

import java.util.List;

public class GameLayoutRoot extends Root {
    private List<GameLayoutRoot.ModuleLayout> layout;
    private Game promotion;
    private Game[] promotions;

    public List<GameLayoutRoot.ModuleLayout> getLayout() {
        return this.layout;
    }

    public void setLayout(List<GameLayoutRoot.ModuleLayout> paramList) {
        this.layout = paramList;
    }

    public Game getPromotion() {
        return this.promotion;
    }

    public void setPromotion(Game paramGame) {
        this.promotion = paramGame;
    }

    public Game[] getPromotions() {
        return this.promotions;
    }

    public void setPromotions(Game[] paramArrayOfGame) {
        this.promotions = paramArrayOfGame;
    }

    public class ModuleLayout {
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

        public void setGameGroup(GameGroupItem paramGameGroupItem) {
            this.gameGroup = paramGameGroupItem;
        }

        public String getId() {
            return this.id;
        }

        public void setId(String paramString) {
            this.id = paramString;
        }

        public String getModule() {
            return this.module;
        }

        public void setModule(String paramString) {
            this.module = paramString;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String paramString) {
            this.title = paramString;
        }

        public ModuleType getType() {
            for (ModuleType localModuleType : ModuleType.values())
                if (localModuleType.getName().equals(this.module))
                    return localModuleType;
            throw new RuntimeException("module " + this.module + " not valid");
        }

        public class ActivityItem {
            private String bannerImage;
            private String link;

            public String getBannerImage() {
                return this.bannerImage;
            }

            public void setBannerImage(String paramString) {
                this.bannerImage = paramString;
            }

            public String getLink() {
                return this.link;
            }

            public void setLink(String paramString) {
                this.link = paramString;
            }
        }
    }
}

