.class final Lcom/ushaqi/zhuishushenqi/reader/cL;
.super Lcom/ushaqi/zhuishushenqi/a/b;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cL;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;B)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cL;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/ushaqi/zhuishushenqi/model/TopicCount;)V
    .locals 4

    .prologue
    const/16 v0, 0x63

    .line 542
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cL;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TopicCount;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;I)I

    .line 543
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cL;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cL;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->getVisitCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 544
    if-lez v1, :cond_1

    .line 545
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cL;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->a(Z)V

    .line 546
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cL;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    move-result-object v2

    if-le v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->setTopicCount(Ljava/lang/String;)V

    .line 550
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 546
    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cL;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->a(Z)V

    goto :goto_1
.end method
