.class public Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field mChapter:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0346
    .end annotation
.end field

.field mFlagSelect:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0347
    .end annotation
.end field

.field mFlagWeb:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0345
    .end annotation
.end field

.field mIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c00a4
    .end annotation
.end field

.field mName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0040
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a:Landroid/app/Activity;

    .line 54
    iput-object p6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->b:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->c:Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f8

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1061
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 1063
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1064
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 1066
    if-ne p4, p5, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mFlagSelect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mFlagSelect:Landroid/widget/TextView;

    const-string v1, "\u5f53\u524d\u9009\u62e9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    :cond_0
    invoke-static {p4}, Lcom/arcsoft/hpay100/a/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mFlagWeb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mChapter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1075
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/O;

    invoke-direct {v0, p0, p5, p4}, Lcom/ushaqi/zhuishushenqi/reader/O;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;II)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/v;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/v;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;I)V
    .locals 6

    .prologue
    .line 30
    .line 1092
    packed-switch p1, :pswitch_data_0

    .line 2109
    :pswitch_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a()V

    .line 2110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->c:Ljava/lang/String;

    const-string v3, "MIX_TOC_ID"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 2111
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2112
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1098
    :goto_0
    return-void

    .line 1119
    :pswitch_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a()V

    .line 1120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1092
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->a:Landroid/app/Activity;

    return-object v0
.end method
