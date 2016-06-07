.class final Lcom/arcsoft/hpay100/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/l;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/l;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    return-void
.end method
