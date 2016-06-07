.class public Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private tts:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTts()[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;->tts:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setTts([Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;->tts:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    .line 49
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;->version:Ljava/lang/String;

    .line 57
    return-void
.end method
