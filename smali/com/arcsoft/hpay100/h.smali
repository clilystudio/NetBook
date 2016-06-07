.class final Lcom/arcsoft/hpay100/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/h;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/h;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->w(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/h;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->w(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/h;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->w(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/h;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Dialog;)V
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
