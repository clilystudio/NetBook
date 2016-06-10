.class final Lcom/ushaqi/zhuishushenqi/widget/C;
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
    .line 133
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/C;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;B)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/C;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/C;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->e()V

    .line 137
    return-void
.end method
