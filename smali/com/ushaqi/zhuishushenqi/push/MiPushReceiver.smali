.class public Lcom/ushaqi/zhuishushenqi/push/MiPushReceiver;
.super Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 58
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/a/b;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/util/a/b;-><init>()V

    .line 1030
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\\w+:\\w+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :goto_0
    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/a/b;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;

    invoke-direct {v1, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V

    .line 65
    const-string v0, "EXTRA_OPEN_HOME_WHEN_CLOSE"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->setFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_1
    return-void

    .line 1030
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 101
    .line 104
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    :goto_0
    sget-object v3, Lcom/xiaomi/mipush/sdk/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v2

    .line 114
    if-eqz v0, :cond_2

    cmp-long v4, v2, v6

    if-nez v4, :cond_2

    .line 115
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/push/BookSubRecord;->delete(Ljava/lang/String;)V

    .line 120
    :goto_2
    if-eqz v1, :cond_3

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    .line 121
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;->delete(Ljava/lang/String;)V

    .line 125
    :goto_3
    return-void

    :cond_0
    move-object v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_1
    sget-object v3, Lcom/xiaomi/mipush/sdk/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 110
    goto :goto_1

    .line 117
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PUSH SUB ERROR: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "PUSH UN SUB ERROR: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
