.class public Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bannerImage:Ljava/lang/String;

.field private link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->bannerImage:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public setBannerImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->bannerImage:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->link:Ljava/lang/String;

    .line 104
    return-void
.end method
