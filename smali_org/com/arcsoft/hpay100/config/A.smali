.class final Lcom/arcsoft/hpay100/config/A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/config/z;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/config/z;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/A;->a:Lcom/arcsoft/hpay100/config/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/A;->a:Lcom/arcsoft/hpay100/config/z;

    .line 1000
    iget-object v0, v0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    .line 0
    # getter for: Lcom/arcsoft/hpay100/config/HPaySMS;->mSendIndex:I
    invoke-static {v0}, Lcom/arcsoft/hpay100/config/HPaySMS;->access$0(Lcom/arcsoft/hpay100/config/HPaySMS;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/config/A;->a:Lcom/arcsoft/hpay100/config/z;

    .line 4000
    iget-object v1, v1, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    .line 0
    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/config/A;->a:Lcom/arcsoft/hpay100/config/z;

    .line 2000
    iget-object v1, v1, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    .line 0
    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/A;->a:Lcom/arcsoft/hpay100/config/z;

    .line 3000
    iget-object v2, v2, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    .line 0
    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSContent:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
