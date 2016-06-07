.class final Lcom/ushaqi/zhuishushenqi/reader/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/r;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/r;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->f(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/F;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/r;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->f(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/F;->a()V

    .line 871
    :cond_0
    return-void
.end method
