.class public Lcom/ushaqi/zhuishushenqi/model/MenuAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3d5f5029b3b61050L


# instance fields
.field private _id:Ljava/lang/String;

.field private downloadCount:I

.field private download_link:Ljava/lang/String;

.field private exp:I

.field private icon:Ljava/lang/String;

.field private insideLink:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private settings:Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 122
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/ushaqi/zhuishushenqi/model/MenuAd;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 125
    :cond_1
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/MenuAd;

    .line 126
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDownloadCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->downloadCount:I

    return v0
.end method

.method public getDownload_link()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->download_link:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->exp:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getInsideLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->insideLink:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->settings:Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->size:J

    return-wide v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->get_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setDownloadCount(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->downloadCount:I

    .line 39
    return-void
.end method

.method public setDownload_link(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->download_link:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setExp(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->exp:I

    .line 55
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->icon:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setInsideLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->insideLink:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->intro:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->name:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSettings(Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->settings:Lcom/ushaqi/zhuishushenqi/model/MenuAd$Settings;

    .line 95
    return-void
.end method

.method public setSize(J)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->size:J

    .line 87
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->_id:Ljava/lang/String;

    .line 31
    return-void
.end method
