.class final Lcom/umeng/update/g;
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
    iput-object p1, p0, Lcom/umeng/update/g;->a:Landroid/content/Context;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/umeng/update/g;->a:Landroid/content/Context;

    .line 572
    const-string v1, "Please add Service in AndroidManifest!"

    .line 573
    const/4 v2, 0x1

    .line 571
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 574
    return-void
.end method
