.class public Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private op:Ljava/lang/String;

.field private recommended:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInfoFromJson(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 11
    if-nez p0, :cond_0

    move-object v0, v1

    .line 17
    :goto_0
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 15
    const-class v2, Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommended()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;->recommended:Ljava/lang/String;

    return-object v0
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;->op:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setRecommended(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;->recommended:Ljava/lang/String;

    .line 30
    return-void
.end method
