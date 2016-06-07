.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private src:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;->src:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;->title:Ljava/lang/String;

    .line 28
    return-void
.end method
