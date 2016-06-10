.class final Lcom/ushaqi/zhuishushenqi/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/a/c;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/a/c;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/a/d;->a:Lcom/ushaqi/zhuishushenqi/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/a/d;->a:Lcom/ushaqi/zhuishushenqi/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/a/c;->cancel(Z)Z

    .line 58
    return-void
.end method
