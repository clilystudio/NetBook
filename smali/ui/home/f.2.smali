.class final Lcom/ushaqi/zhuishushenqi/ui/home/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/f;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 977
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->a()Lcom/ushaqi/zhuishushenqi/util/as;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->i()V

    .line 978
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/f;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->b(Landroid/content/Context;)V

    .line 979
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/f;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->finish()V

    .line 980
    return-void
.end method
