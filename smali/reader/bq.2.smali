.class final Lcom/ushaqi/zhuishushenqi/reader/bq;
.super Lcom/ushaqi/zhuishushenqi/a/b;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;B)V
    .locals 0

    .prologue
    .line 2172
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/bq;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/ushaqi/zhuishushenqi/model/TopicCount;)V
    .locals 3

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TopicCount;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 2177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->af(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->getVisitCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 2178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->f(Z)V

    .line 2183
    :goto_0
    return-void

    .line 2181
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bq;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->f(Z)V

    goto :goto_0
.end method
