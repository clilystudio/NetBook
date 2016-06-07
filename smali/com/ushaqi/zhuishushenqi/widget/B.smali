.class final Lcom/ushaqi/zhuishushenqi/widget/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/B;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;B)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/B;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/B;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->g()V

    .line 157
    return-void
.end method
