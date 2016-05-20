.class final Lcom/ushaqi/zhuishushenqi/ui/home/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/R;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/R;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;->finish()V

    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/R;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;

    const v1, 0x7f04001e

    const v2, 0x7f04001f

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;->overridePendingTransition(II)V

    .line 44
    return-void
.end method
