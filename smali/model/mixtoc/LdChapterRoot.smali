.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private author:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;->src:Ljava/lang/String;

    .line 34
    return-void
.end method
