.class public Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;)V
    .locals 2

    .prologue
    .line 24
    .line 1081
    const v0, 0x7f0c0268

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1082
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/K;

    invoke-direct {v1, p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/K;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->a:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->a:Z

    .line 33
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/L;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/L;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/L;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    return-void
.end method
