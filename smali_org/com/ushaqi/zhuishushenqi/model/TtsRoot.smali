.class public Lcom/ushaqi/zhuishushenqi/model/TtsRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private result:Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;

.field private ret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static getInfoFromJson(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TtsRoot;
    .locals 2

    .prologue
    .line 13
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 14
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/TtsRoot;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TtsRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getResult()Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TtsRoot;->result:Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;

    return-object v0
.end method

.method public getRet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TtsRoot;->ret:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TtsRoot;->result:Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;

    .line 29
    return-void
.end method

.method public setRet(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TtsRoot;->ret:Ljava/lang/String;

    .line 37
    return-void
.end method
