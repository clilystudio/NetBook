.class public abstract Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/AppItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f050138

    const v6, 0x7f050011

    const/4 v3, 0x1

    .line 22
    .line 4074
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    .line 3105
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3106
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4503
    const-string v2, "mystery_app_download"

    invoke-static {v1, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 3108
    new-instance v1, Landroid/support/v7/app/k;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;)V

    const-string v2, "\u786e\u8ba4\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/k;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5373\u5c06\u5f00\u59cb\u4e0b\u8f7d\u300a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300b\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3109
    invoke-virtual {v1, v0}, Landroid/support/v7/app/k;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/a;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/a;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;)V

    .line 3110
    invoke-virtual {v0, v7, v1}, Landroid/support/v7/app/k;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    move-result-object v0

    .line 3117
    invoke-virtual {v0, v6, v8}, Landroid/support/v7/app/k;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    move-result-object v0

    .line 3118
    invoke-virtual {v0}, Landroid/support/v7/app/k;->b()Landroid/support/v7/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/j;->show()V

    :goto_0
    return-void

    .line 3120
    :cond_0
    new-instance v0, Landroid/support/v7/app/k;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6d41\u91cf\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    move-result-object v0

    .line 3121
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5074
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    .line 3121
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getFormatedSize()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/b;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/b;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;)V

    .line 3122
    invoke-virtual {v0, v7, v1}, Landroid/support/v7/app/k;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    move-result-object v0

    .line 3128
    invoke-virtual {v0, v6, v8}, Landroid/support/v7/app/k;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    move-result-object v0

    .line 3129
    invoke-virtual {v0}, Landroid/support/v7/app/k;->b()Landroid/support/v7/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/j;->show()V

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v0, 0x7f02013b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setBackgroundResource(I)V

    .line 92
    return-void
.end method


# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/model/AppItem;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v1, 0x7f020139

    const/4 v2, 0x0

    .line 37
    .line 1074
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    .line 37
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 40
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 63
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/e;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/e;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3085
    const-string v0, "\u4e0b\u8f7d"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 3086
    const v0, 0x7f020254

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1100
    :sswitch_0
    const-string v0, "\u5df2\u5b89\u88c5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setBackgroundResource(I)V

    .line 43
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2095
    :sswitch_1
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 2096
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setBackgroundResource(I)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 51
    :sswitch_2
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->e()V

    .line 52
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/c;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/c;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 55
    :sswitch_3
    const-string v0, "\u5df2\u6682\u505c"

    .line 3031
    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setBackgroundResource(I)V

    .line 3032
    const-string v1, "#AAAAAA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setTextColor(I)V

    .line 3033
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/d;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/d;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 59
    :sswitch_4
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->e()V

    .line 60
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/c;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/c;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x20 -> :sswitch_0
        0x40 -> :sswitch_4
    .end sparse-switch
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method public setAppItem(Lcom/ushaqi/zhuishushenqi/model/AppItem;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    .line 71
    return-void
.end method
