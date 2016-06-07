.class public Lcom/ushaqi/zhuishushenqi/model/GirlTopic;
.super Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private shareLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getShareLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->shareLink:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->content:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setShareLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->shareLink:Ljava/lang/String;

    .line 25
    return-void
.end method
