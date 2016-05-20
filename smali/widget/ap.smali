.class final Lcom/ushaqi/zhuishushenqi/widget/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/cd;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/ao;Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f(I)V

    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;II)V

    .line 94
    return-void
.end method
