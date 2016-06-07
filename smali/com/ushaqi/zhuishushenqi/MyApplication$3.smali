.class Lcom/ushaqi/zhuishushenqi/MyApplication$3;
.super Ljava/util/Properties;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x7a0bee6d493f18a1L


# instance fields
.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/MyApplication;

.field final synthetic val$account:Lcom/ushaqi/zhuishushenqi/model/Account;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/MyApplication;Lcom/ushaqi/zhuishushenqi/model/Account;)V
    .locals 2

    .prologue
    .line 227
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$3;->this$0:Lcom/ushaqi/zhuishushenqi/MyApplication;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$3;->val$account:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 231
    const-string v0, "account.token"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$3;->val$account:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication$3;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    return-void
.end method
