.class public final Lcom/ushaqi/zhuishushenqi/reader/Reader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[I


# instance fields
.field private A:Z

.field private B:Lcom/ushaqi/zhuishushenqi/reader/ag;

.field private C:Lcom/ushaqi/zhuishushenqi/reader/Y;

.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

.field private m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

.field private n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

.field private o:Landroid/os/Handler;

.field private p:Ljava/util/concurrent/ExecutorService;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/ae;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/ushaqi/zhuishushenqi/reader/ae;

.field private s:Lcom/ushaqi/zhuishushenqi/reader/ae;

.field private t:Ljava/lang/Integer;

.field private u:Lcom/ushaqi/zhuishushenqi/model/Toc;

.field private v:Ljava/lang/String;

.field private w:Lcom/ushaqi/zhuishushenqi/util/Q;

.field private x:Ljava/lang/String;

.field private final y:I

.field private z:Lcom/ushaqi/zhuishushenqi/reader/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        -0x1
        0x2
        0x3
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    .line 72
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a:Ljava/util/Map;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o:Landroid/os/Handler;

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->p:Ljava/util/concurrent/ExecutorService;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->q:Ljava/util/ArrayList;

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->t:Ljava/lang/Integer;

    .line 90
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/Q;->a()Lcom/ushaqi/zhuishushenqi/util/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->w:Lcom/ushaqi/zhuishushenqi/util/Q;

    .line 100
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->A:Z

    .line 299
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/U;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/U;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->C:Lcom/ushaqi/zhuishushenqi/reader/Y;

    .line 129
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->v:Ljava/lang/String;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->A:Z

    .line 131
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->y:I

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    .line 72
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a:Ljava/util/Map;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o:Landroid/os/Handler;

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->p:Ljava/util/concurrent/ExecutorService;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->q:Ljava/util/ArrayList;

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->t:Ljava/lang/Integer;

    .line 90
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/Q;->a()Lcom/ushaqi/zhuishushenqi/util/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->w:Lcom/ushaqi/zhuishushenqi/util/Q;

    .line 100
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->A:Z

    .line 299
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/U;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/U;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->C:Lcom/ushaqi/zhuishushenqi/reader/Y;

    .line 107
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d:Ljava/lang/String;

    .line 110
    iput p4, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->y:I

    .line 112
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAuthor()Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    .line 1158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    if-nez v0, :cond_1

    .line 1159
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    .line 1160
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->setBookId(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->setTocId(Ljava/lang/String;)V

    .line 2146
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->getChapterIndex()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    .line 1164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->getCharIndex()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    goto :goto_0

    .line 2142
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    .line 2143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    if-nez v0, :cond_3

    .line 2144
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    .line 2145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->setBookId(Ljava/lang/String;)V

    .line 2146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->setTocId(Ljava/lang/String;)V

    goto :goto_0

    .line 2148
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->getChapterIndex()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    .line 2149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->getCharIndex()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/Toc;)Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->u:Lcom/ushaqi/zhuishushenqi/model/Toc;

    return-object p1
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->create(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;II)Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/reader/ae;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->s:Lcom/ushaqi/zhuishushenqi/reader/ae;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/ag;)Lcom/ushaqi/zhuishushenqi/reader/ag;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->B:Lcom/ushaqi/zhuishushenqi/reader/ag;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/f;)Lcom/ushaqi/zhuishushenqi/reader/f;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->z:Lcom/ushaqi/zhuishushenqi/reader/f;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/f;
    .locals 3

    .prologue
    .line 37
    .line 4484
    const/4 v0, 0x0

    .line 4485
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    if-eqz v1, :cond_2

    .line 4486
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/f;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/f;-><init>(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 4493
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4494
    invoke-virtual {v0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_1
    return-object v0

    .line 4488
    :cond_2
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->c()Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    move-result-object v1

    .line 4489
    if-eqz v1, :cond_0

    .line 4490
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/f;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->y:I

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/f;-><init>(Lcom/ushaqi/zhuishushenqi/model/BookInfo;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V
    .locals 2

    .prologue
    .line 251
    if-nez p1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o:Landroid/os/Handler;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/Q;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/Q;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->t:Ljava/lang/Integer;

    .line 263
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o:Landroid/os/Handler;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/R;

    invoke-direct {v1, p0, p2}, Lcom/ushaqi/zhuishushenqi/reader/R;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->t:Ljava/lang/Integer;

    .line 274
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o:Landroid/os/Handler;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/S;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/S;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o:Landroid/os/Handler;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/T;

    invoke-direct {v1, p0, p2}, Lcom/ushaqi/zhuishushenqi/reader/T;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/Reader;ILcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(ILcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/Reader;[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)V
    .locals 6

    .prologue
    .line 37
    .line 5735
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 5736
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    int-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->i:Ljava/util/Map;

    .line 5737
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 5738
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getId()Ljava/lang/String;

    move-result-object v0

    .line 5740
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5741
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5742
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    .line 5744
    :cond_0
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->i:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5737
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 458
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/X;

    invoke-direct {v1, p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/X;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(ILcom/ushaqi/zhuishushenqi/reader/e;ZZ)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 2

    .prologue
    .line 37
    .line 6508
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->z:Lcom/ushaqi/zhuishushenqi/reader/f;

    if-eqz v0, :cond_0

    .line 6509
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->z:Lcom/ushaqi/zhuishushenqi/reader/f;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/I;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/f;->b(Ljava/lang/String;)V

    .line 6510
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->z:Lcom/ushaqi/zhuishushenqi/reader/f;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(Ljava/lang/String;)V

    .line 6511
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->z:Lcom/ushaqi/zhuishushenqi/reader/f;

    sget v1, Lcom/ushaqi/zhuishushenqi/util/I;->g:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(I)V

    .line 6513
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->z:Lcom/ushaqi/zhuishushenqi/reader/f;

    invoke-virtual {v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6515
    :cond_0
    const/4 v0, 0x0

    .line 37
    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/reader/ae;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->r:Lcom/ushaqi/zhuishushenqi/reader/ae;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/Toc;)V
    .locals 3

    .prologue
    .line 37
    .line 5602
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    const-string v2, "toc"

    invoke-static {v0, v1, v2, p1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Toc;)Z

    .line 37
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->p:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->A:Z

    return v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 3

    .prologue
    .line 37
    .line 4598
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    const-string v2, "toc"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Toc;

    .line 37
    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->u:Lcom/ushaqi/zhuishushenqi/model/Toc;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 1

    .prologue
    .line 37
    .line 5500
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->z:Lcom/ushaqi/zhuishushenqi/reader/f;

    if-eqz v0, :cond_0

    .line 5501
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->z:Lcom/ushaqi/zhuishushenqi/reader/f;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/f;->a()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5503
    :cond_0
    const/4 v0, 0x0

    .line 37
    goto :goto_0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/reader/ag;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->B:Lcom/ushaqi/zhuishushenqi/reader/ag;

    return-object v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/reader/Reader;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->y:I

    return v0
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x5

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->y:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->i:Ljava/util/Map;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 428
    const/4 v0, 0x1

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->CHAPTER:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(ILcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V

    .line 429
    return-void
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 219
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->c()Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->y:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->create(Lcom/ushaqi/zhuishushenqi/model/BookInfo;Ljava/lang/String;III)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->y:I

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->create(Lcom/ushaqi/zhuishushenqi/model/BookInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 837
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    .line 838
    return-void
.end method

.method public final a(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 175
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 176
    :goto_0
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    .line 177
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    .line 178
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2210
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    if-eqz v2, :cond_0

    .line 2213
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->setChapterIndex(I)V

    .line 2214
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->setCharIndex(I)V

    .line 2215
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n:Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->save()Ljava/lang/Long;

    .line 183
    :cond_0
    :goto_1
    if-eqz v0, :cond_9

    .line 3439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3440
    sget-object v2, Lcom/ushaqi/zhuishushenqi/reader/Reader;->b:[I

    :goto_2
    const/4 v3, 0x5

    if-ge v1, v3, :cond_6

    aget v3, v2, v1

    .line 3441
    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    add-int/2addr v3, v4

    .line 3442
    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 3443
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3440
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 175
    goto :goto_0

    .line 3192
    :cond_3
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    if-eqz v2, :cond_0

    .line 3195
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3196
    :cond_4
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setTocId(Ljava/lang/String;)V

    .line 3197
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 3199
    :cond_5
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->setChapterIndex(I)V

    .line 3200
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->setCharIndex(I)V

    .line 3201
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->setChapterTitle(Ljava/lang/String;)V

    .line 3202
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->setHost(Ljava/lang/String;)V

    .line 3203
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m:Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->save()Ljava/lang/Long;

    goto :goto_1

    .line 3447
    :cond_6
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3448
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3450
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 3454
    :cond_8
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Ljava/util/List;)V

    .line 186
    :cond_9
    return-void
.end method

.method public final a(ILcom/ushaqi/zhuishushenqi/reader/e;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, -0x3

    .line 358
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/util/Q;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getStatus()I

    move-result v1

    .line 361
    if-eq v1, v4, :cond_0

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    .line 365
    invoke-interface {p2, v0}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    .line 366
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->p()V

    .line 367
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    .line 375
    if-eqz v0, :cond_3

    .line 376
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getStatus()I

    move-result v1

    .line 377
    if-eq v1, v4, :cond_1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    .line 381
    :cond_2
    invoke-interface {p2, v0}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    .line 382
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->p()V

    goto :goto_0

    .line 3731
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 388
    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_5

    .line 389
    :cond_4
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;-><init>()V

    .line 390
    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setStatus(I)V

    .line 391
    invoke-interface {p2, v0}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    .line 392
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->p()V

    goto :goto_0

    .line 395
    :cond_5
    if-gez p1, :cond_7

    .line 396
    const/4 p1, 0x0

    .line 401
    :cond_6
    :goto_1
    aget-object v1, v0, p1

    .line 403
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 404
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Chapter;

    .line 406
    if-eqz v0, :cond_8

    .line 407
    invoke-direct {p0, v1, p1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v1

    .line 408
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setBody(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setCpContent(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setId(Ljava/lang/String;)V

    .line 411
    invoke-interface {p2, v1}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    .line 412
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->p()V

    goto/16 :goto_0

    .line 397
    :cond_7
    array-length v1, v0

    if-lt p1, v1, :cond_6

    .line 398
    array-length v1, v0

    add-int/lit8 p1, v1, -0x1

    goto :goto_1

    .line 418
    :cond_8
    if-nez p4, :cond_9

    if-nez p3, :cond_9

    .line 419
    invoke-direct {p0, v1, p1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v0

    .line 420
    invoke-interface {p2, v0}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    .line 421
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->p()V

    goto/16 :goto_0

    .line 424
    :cond_9
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->C:Lcom/ushaqi/zhuishushenqi/reader/Y;

    invoke-interface {v0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/reader/Y;->a(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/ad;Z)V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/P;

    invoke-direct {v1, p0, p2, p1}, Lcom/ushaqi/zhuishushenqi/reader/P;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;ZLcom/ushaqi/zhuishushenqi/reader/ad;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 248
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/ae;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->r:Lcom/ushaqi/zhuishushenqi/reader/ae;

    .line 477
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->f:Ljava/lang/String;

    .line 899
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->h:Ljava/util/Map;

    .line 757
    return-void
.end method

.method public final b()Lcom/ushaqi/zhuishushenqi/reader/ag;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->B:Lcom/ushaqi/zhuishushenqi/reader/ag;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    .line 849
    return-void
.end method

.method public final b(Lcom/ushaqi/zhuishushenqi/reader/ae;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->s:Lcom/ushaqi/zhuishushenqi/reader/ae;

    .line 481
    return-void
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 888
    :cond_0
    const/4 v0, 0x0

    .line 890
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/Q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 723
    :cond_0
    return-void
.end method

.method public final c(Lcom/ushaqi/zhuishushenqi/reader/ae;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 921
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    return-void
.end method

.method public final d()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->h:Ljava/util/Map;

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    array-length v0, v0

    .line 768
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 779
    if-gez v0, :cond_0

    .line 780
    const/4 v0, 0x0

    .line 782
    :cond_0
    return v0
.end method

.method public final h()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-virtual {v0}, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 794
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->A:Z

    if-eqz v0, :cond_1

    .line 3811
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3814
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3815
    array-length v1, v0

    if-lez v1, :cond_0

    .line 3816
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 3818
    :cond_0
    const-string v0, "TXT"

    goto :goto_0

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k:I

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 878
    .line 3865
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 3866
    :cond_0
    const/4 v0, 0x0

    .line 879
    :goto_0
    if-eqz v0, :cond_2

    .line 880
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 882
    :goto_1
    return-object v0

    .line 3868
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 882
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method
