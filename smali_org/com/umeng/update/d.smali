.class final Lcom/umeng/update/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/d;->a:Landroid/content/Context;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/umeng/update/d;->a:Landroid/content/Context;

    .line 265
    iget-object v1, p0, Lcom/umeng/update/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/sdk/b/b;->e(Landroid/content/Context;)I

    move-result v1

    .line 266
    const/4 v2, 0x0

    .line 262
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    return-void
.end method
