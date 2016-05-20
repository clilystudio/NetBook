.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mChapterLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;"
        }
    .end annotation
.end field

.field private txtFileLength:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;->txtFileLength:J

    .line 23
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;->mChapterLinks:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getChapterLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;->mChapterLinks:Ljava/util/List;

    return-object v0
.end method

.method public getTxtFileLength()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;->txtFileLength:J

    return-wide v0
.end method

.method public setChapterLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;->mChapterLinks:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setTxtFileLength(J)V
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;->txtFileLength:J

    .line 32
    return-void
.end method
