.class final Lcom/arcsoft/hpay100/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/c/c;->a(Landroid/app/Activity;Ljava/lang/String;ZLandroid/support/design/widget/K;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Dialog;)V

    invoke-static {}, Lcom/arcsoft/hpay100/a;->a()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/arcsoft/hpay100/a;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
