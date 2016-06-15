package com.clilystudio.netbook.model;

import com.google.gson.Gson;

public class TtsRoot {
    private TtsResult result;
    private String ret;

    public static TtsRoot getInfoFromJson(String string) {
        try {
            TtsRoot ttsRoot = (TtsRoot) new Gson().fromJson(string, TtsRoot.class);
            return ttsRoot;
        } catch (Exception var1_2) {
            return null;
        }
    }

    public TtsResult getResult() {
        return this.result;
    }

    public void setResult(TtsResult ttsResult) {
        this.result = ttsResult;
    }

    public String getRet() {
        return this.ret;
    }

    public void setRet(String string) {
        this.ret = string;
    }

    public class TtsRoot$TtsResult {
        private TtsRoot$Tts[] tts;
        private String version;

        public TtsRoot$Tts[] getTts() {
            return this.tts;
        }

        public void setTts(TtsRoot$Tts[] arrttsRoot$Tts) {
            this.tts = arrttsRoot$Tts;
        }

        public String getVersion() {
            return this.version;
        }

        public void setVersion(String string) {
            this.version = string;
        }
    }
    public class TtsRoot$Tts {
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

        public void setAccent(String string) {
            this.accent = string;
        }

        public String getAge() {
            return this.age;
        }

        public void setAge(String string) {
            this.age = string;
        }

        public String getLanguage() {
            return this.language;
        }

        public void setLanguage(String string) {
            this.language = string;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String string) {
            this.name = string;
        }

        public String getNickname() {
            return this.nickname;
        }

        public void setNickname(String string) {
            this.nickname = string;
        }

        public String getSelected() {
            return this.selected;
        }

        public void setSelected(String string) {
            this.selected = string;
        }

        public String getSex() {
            return this.sex;
        }

        public void setSex(String string) {
            this.sex = string;
        }
    }

}
