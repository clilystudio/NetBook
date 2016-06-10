.class public final Lcom/ushaqi/zhuishushenqi/ui/feed/f;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;

    .line 90
    const v0, 0x7f0300eb

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 91
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 143
    const-string v0, "\u5df2\u79fb\u56de"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v0, 0x7f0b00d6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/feed/f;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 87
    check-cast p2, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1103
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getFullCover()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020106

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1104
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1105
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getChapterCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getChapterCountAtFeed()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1106
    if-gez v0, :cond_2

    .line 1109
    :goto_0
    const/4 v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u517b\u4e86 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u7ae0\u672a\u8bfb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1111
    const/4 v0, 0x3

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1113
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isFeeding()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1114
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1115
    const-string v2, "\u79fb\u56de"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1117
    const v1, 0x7f020122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1118
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1127
    :goto_1
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/feed/g;

    invoke-direct {v1, p0, v0, p2}, Lcom/ushaqi/zhuishushenqi/ui/feed/g;-><init>(Lcom/ushaqi/zhuishushenqi/ui/feed/f;Landroid/widget/TextView;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void

    .line 1120
    :cond_0
    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1121
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1124
    :cond_1
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c0314
        0x7f0c0315
        0x7f0c0316
        0x7f0c0313
    .end array-data
.end method
