.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;->content:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;->success:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;->content:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;->success:Z

    .line 23
    return-void
.end method
