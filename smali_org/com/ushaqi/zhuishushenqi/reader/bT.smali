.class final Lcom/ushaqi/zhuishushenqi/reader/bT;
.super Lcom/ushaqi/zhuishushenqi/a/b;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bT;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;B)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/bT;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/ushaqi/zhuishushenqi/model/TopicCount;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bT;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TopicCount;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;I)I

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bT;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bT;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->getVisitCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 120
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bT;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bT;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
