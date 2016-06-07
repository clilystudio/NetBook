.class public Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Intent;

.field mIcon:Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c00a4
    .end annotation
.end field

.field mSubFlag:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0331
    .end annotation
.end field

.field mSubText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0333
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0048
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p5, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->a:Landroid/content/Intent;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f3

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mIcon:Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;

    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->setImageResource(I)V

    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    if-eqz p4, :cond_0

    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mSubFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/Z;

    invoke-direct {v0, p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/Z;-><init>(Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 40
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1445
    const-string v0, "home_find_item_click"

    invoke-static {p1, v0, p2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
