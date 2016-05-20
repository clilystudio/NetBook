.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterBook;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chapter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterBook;->chapter:Ljava/lang/String;

    return-object v0
.end method

.method public setChapter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterBook;->chapter:Ljava/lang/String;

    .line 19
    return-void
.end method
