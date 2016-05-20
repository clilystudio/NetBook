.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/umeng/update/a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;I)V
    .locals 1

    .prologue
    .line 17
    .line 1071
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->a:Lcom/umeng/update/a;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->a:Lcom/umeng/update/a;

    invoke-interface {v0, p1}, Lcom/umeng/update/a;->a(I)V

    .line 17
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 142
    const v0, 0x7f0c0405

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 143
    return-void

    .line 142
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 1049
    const v0, 0x7f0c03fa

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->b:Landroid/widget/TextView;

    .line 1050
    const v0, 0x7f0c03e5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->c:Landroid/view/View;

    .line 1051
    const v0, 0x7f0c03e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->d:Landroid/view/View;

    .line 1052
    const v0, 0x7f0c03e6

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->e:Landroid/view/View;

    .line 1053
    const v0, 0x7f0c0406

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->f:Landroid/widget/TextView;

    .line 1055
    const v0, 0x7f0c03f9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1057
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cA;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/cA;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;)V

    .line 1064
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    const v2, 0x7f0c0405

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method public setChapterLink(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->b(Z)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->b(Z)V

    .line 137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnBtnClickListener$74b8600c(Lcom/umeng/update/a;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->a:Lcom/umeng/update/a;

    .line 78
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public setTopicCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
