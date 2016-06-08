package com.clilystudio.netbook.model;

import com.google.gson.Gson;

public class TtsRoot {
    private TtsRoot.TtsResult result;
    private String ret;

    public static TtsRoot getInfoFromJson(String paramString) {
        try {
            TtsRoot localTtsRoot = (TtsRoot) new Gson().fromJson(paramString, TtsRoot.class);
            return localTtsRoot;
        } catch (Exception localException) {
        }
        return null;
    }

    public TtsRoot.TtsResult getResult() {
        return this.result;
    }

    public void setResult(TtsRoot.TtsResult paramTtsResult) {
        this.result = paramTtsResult;
    }

    public String getRet() {
        return this.ret;
    }

    public void setRet(String paramString) {
        this.ret = paramString;
    }

    public class TtsResult {
        private TtsRoot.Tts[] tts;
        private String version;

        public TtsRoot.Tts[] getTts() {
            return this.tts;
        }

        public void setTts(TtsRoot.Tts[] paramArrayOfTts) {
            this.tts = paramArrayOfTts;
        }

        public String getVersion() {
            return this.version;
        }

        public void setVersion(String paramString) {
            this.version = paramString;
        }
    }

    public class Tts {
        private String accent;
        private String age;
        private String language;
        private String name;
        private String nickname;
        private String selected;
        private String sex;

        public String getAccent() {
            return this.accent;
        }

        public void setAccent(String paramString) {
            this.accent = paramString;
        }

        public String getAge() {
            return this.age;
        }

        public void setAge(String paramString) {
            this.age = paramString;
        }

        public String getLanguage() {
            return this.language;
        }

        public void setLanguage(String paramString) {
            this.language = paramString;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String paramString) {
            this.name = paramString;
        }

        public String getNickname() {
            return this.nickname;
        }

        public void setNickname(String paramString) {
            this.nickname = paramString;
        }

        public String getSelected() {
            return this.selected;
        }

        public void setSelected(String paramString) {
            this.selected = paramString;
        }

        public String getSex() {
            return this.sex;
        }

        public void setSex(String paramString) {
            this.sex = paramString;
        }
    }

}

