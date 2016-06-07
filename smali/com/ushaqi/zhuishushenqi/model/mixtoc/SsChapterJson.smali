.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapterJson;
.super Ljava/lang/Object;
.source "SourceFile"
# direct methods
.method public constructor <init>()V
    .locals 0
    .prologue
    p0.<init>();
    return;
.end method
.method public static getChapterRoot(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 7
    .prologue
    v1 = 0x0;
    :try_start_0
    v0 = new JSONObject();
    v0.<init>(p0);
    v2 = new JSONArray();
    v3 = "rows";
    v0 = v0.getString(v3);
    v2.<init>(v0);
    v0 = v2.length();
    if (v0 <= 0) {
//       if-lez v0, :cond_1
    }
    v0 = 0x0;
    v0 = v2.getJSONArray(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v2 = v0.length();
    if (v2 <= 0) {
//       if-lez v2, :cond_1
    }
    v2 = 0x0;
    v2 = v0.getJSONObject(v2);
    v3 = new Chapter();
    v3.<init>();
    v0 = "serialcontent";
    v0 = v2.getString(v0);
    v4 = "<br>";
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v5 = "\n";
    v0 = v0.replaceAll(v4, v5);
    :goto_0
    v0 = Lcom/arcsoft/hpay100/a/a.z(v0);
    v3.setBody(v0);
    v0 = "serialid";
    v0 = v2.getString(v0);
    v4 = "serialurl";
    v2 = v2.getString(v4);
    v4 = new StringBuilder();
    v4.<init>();
    v0 = v4.append(v0);
    v4 = "_";
    v0 = v0.append(v4);
    v0 = v0.append(v2);
    v0 = v0.toString();
    v3.setLink(v0);
    v0 = new ChapterRoot();
    v0.<init>();
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    :try_start_1
    v0.setChapter(v3);
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    :goto_1
    return v0;
    :cond_0
    v0 = v1;
    goto :goto_0
    :catch_0
    move-exception v0
    v6 = v0;
    v0 = v1;
    v1 = v6;
    :goto_2
    v1.printStackTrace();
    goto :goto_1
    :catch_1
    move-exception v1
    goto :goto_2
    :cond_1
    v0 = v1;
    goto :goto_1
.end method
.method public static getChapterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .prologue
    v0 = 0x0;
    :try_start_0
    v1 = new JSONObject();
    v1.<init>(p0);
    v2 = new JSONArray();
    v3 = "rows";
    v1 = v1.getString(v3);
    v2.<init>(v1);
    v1 = v2.length();
    if (v1 <= 0) {
//       if-lez v1, :cond_0
    }
    v1 = 0x0;
    v1 = v2.getJSONArray(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v2 = v1.length();
    if (v2 <= 0) {
//       if-lez v2, :cond_0
    }
    v2 = 0x0;
    v1 = v1.getJSONObject(v2);
    v2 = "serialurl";
    v1.getString(v2);
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :cond_0
    :goto_0
    return v0;
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public static getTocCount(Ljava/lang/String;)I
    .locals 4
    .prologue
    v0 = 0x0;
    :try_start_0
    v1 = new JSONObject();
    v1.<init>(p0);
    v2 = new JSONArray();
    v3 = "rows";
    v1 = v1.getString(v3);
    v2.<init>(v1);
    v1 = v2.length();
    if (v1 <= 0) {
//       if-lez v1, :cond_0
    }
    v1 = 0x0;
    v1 = v2.getJSONArray(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v2 = v1.length();
    if (v2 <= 0) {
//       if-lez v2, :cond_0
    }
    v2 = 0x0;
    v1 = v1.getJSONObject(v2);
    v2 = "serialnum";
    v1.getInt(v2);
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    :cond_0
    :goto_0
    return v0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
