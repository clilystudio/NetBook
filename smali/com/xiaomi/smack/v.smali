.class public final Lcom/xiaomi/smack/v;
.super Lcom/xiaomi/smack/packet/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/smack/u;Lcom/xiaomi/push/service/R;Ljava/lang/String;Lcom/xiaomi/smack/l;)V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/smack/packet/e;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4}, Lcom/xiaomi/smack/l;->k()I

    move-result v0

    const-string v3, "challenge"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "token"

    iget-object v4, p2, Lcom/xiaomi/push/service/R;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "chid"

    iget-object v4, p2, Lcom/xiaomi/push/service/R;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "from"

    iget-object v4, p2, Lcom/xiaomi/push/service/R;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "to"

    const-string v4, "xiaomi.com"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p2, Lcom/xiaomi/push/service/R;->e:Z

    if-eqz v3, :cond_2

    const-string v3, "kick"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p4}, Lcom/xiaomi/smack/l;->m()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_a

    const-string v3, "conn:%1$d,t:%2$d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-virtual {p4}, Lcom/xiaomi/smack/l;->m()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pf"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/xiaomi/smack/l;->l()V

    invoke-virtual {p4}, Lcom/xiaomi/smack/l;->n()V

    :goto_1
    iget-object v3, p2, Lcom/xiaomi/push/service/R;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "client_attrs"

    iget-object v4, p2, Lcom/xiaomi/push/service/R;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v3, p2, Lcom/xiaomi/push/service/R;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "cloud_attrs"

    iget-object v4, p2, Lcom/xiaomi/push/service/R;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v3, p2, Lcom/xiaomi/push/service/R;->d:Ljava/lang/String;

    const-string v4, "XIAOMI-PASS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Lcom/xiaomi/push/service/R;->d:Ljava/lang/String;

    const-string v4, "XMPUSH-PASS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    iget-object v3, p2, Lcom/xiaomi/push/service/R;->d:Ljava/lang/String;

    iget-object v4, p2, Lcom/xiaomi/push/service/R;->i:Ljava/lang/String;

    invoke-static {v3, v1, v2, v4}, Landroid/support/v7/app/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iget-object v3, p2, Lcom/xiaomi/push/service/R;->h:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/xiaomi/smack/v;->l(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/xiaomi/push/service/R;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/xiaomi/smack/v;->n(Ljava/lang/String;)V

    const-string v3, "xiaomi.com"

    invoke-virtual {p0, v3}, Lcom/xiaomi/smack/v;->m(Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/smack/packet/a;

    const-string v4, "token"

    invoke-direct {v3, v4, v1, v1, v1}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v4, p2, Lcom/xiaomi/push/service/R;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/smack/packet/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/smack/v;->a(Lcom/xiaomi/smack/packet/a;)V

    new-instance v4, Lcom/xiaomi/smack/packet/a;

    const-string v3, "kick"

    invoke-direct {v4, v3, v1, v1, v1}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-boolean v3, p2, Lcom/xiaomi/push/service/R;->e:Z

    if-eqz v3, :cond_6

    const-string v3, "1"

    :goto_5
    invoke-virtual {v4, v3}, Lcom/xiaomi/smack/packet/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/xiaomi/smack/v;->a(Lcom/xiaomi/smack/packet/a;)V

    new-instance v3, Lcom/xiaomi/smack/packet/a;

    const-string v4, "sig"

    invoke-direct {v3, v4, v1, v1, v1}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/smack/v;->a(Lcom/xiaomi/smack/packet/a;)V

    new-instance v2, Lcom/xiaomi/smack/packet/a;

    const-string v3, "method"

    invoke-direct {v2, v3, v1, v1, v1}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p2, Lcom/xiaomi/push/service/R;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p2, Lcom/xiaomi/push/service/R;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/packet/a;->b(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0, v2}, Lcom/xiaomi/smack/v;->a(Lcom/xiaomi/smack/packet/a;)V

    new-instance v3, Lcom/xiaomi/smack/packet/a;

    const-string v2, "client_attrs"

    invoke-direct {v3, v2, v1, v1, v1}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p2, Lcom/xiaomi/push/service/R;->f:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, ""

    :goto_7
    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/smack/v;->a(Lcom/xiaomi/smack/packet/a;)V

    new-instance v3, Lcom/xiaomi/smack/packet/a;

    const-string v2, "cloud_attrs"

    invoke-direct {v3, v2, v1, v1, v1}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p2, Lcom/xiaomi/push/service/R;->g:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v2, ""

    :goto_8
    invoke-virtual {v3, v2}, Lcom/xiaomi/smack/packet/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/smack/v;->a(Lcom/xiaomi/smack/packet/a;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/xiaomi/smack/packet/a;

    const-string v3, "pf"

    invoke-direct {v2, v3, v1, v1, v1}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaomi/smack/packet/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/smack/v;->a(Lcom/xiaomi/smack/packet/a;)V

    :cond_1
    return-void

    :cond_2
    const-string v3, "kick"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const-string v3, "client_attrs"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    const-string v3, "cloud_attrs"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5
    iget-object v2, p2, Lcom/xiaomi/push/service/R;->d:Ljava/lang/String;

    const-string v3, "XIAOMI-SASL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-object v2, v1

    goto/16 :goto_4

    :cond_6
    const-string v3, "0"

    goto/16 :goto_5

    :cond_7
    const-string v3, "XIAOMI-SASL"

    invoke-virtual {v2, v3}, Lcom/xiaomi/smack/packet/a;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    iget-object v2, p2, Lcom/xiaomi/push/service/R;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_9
    iget-object v2, p2, Lcom/xiaomi/push/service/R;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<bind "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "id=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "to=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "from=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "chid=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->k()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/smack/v;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/packet/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v0, "</bind>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
