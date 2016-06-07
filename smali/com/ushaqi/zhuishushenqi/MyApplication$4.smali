.class Lcom/ushaqi/zhuishushenqi/MyApplication$4;
.super Ljava/util/Properties;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x7a0bee6d493f18a1L


# instance fields
.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/MyApplication;

.field final synthetic val$user:Lcom/ushaqi/zhuishushenqi/model/User;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/MyApplication;Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 2

    .prologue
    .line 241
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->this$0:Lcom/ushaqi/zhuishushenqi/MyApplication;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->val$user:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 245
    const-string v0, "user.id"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->val$user:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    const-string v0, "user.name"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->val$user:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 247
    const-string v0, "user.avatar"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->val$user:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    const-string v0, "user.lv"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->val$user:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->val$user:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "user.gender"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->val$user:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication$4;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    :cond_0
    return-void
.end method
